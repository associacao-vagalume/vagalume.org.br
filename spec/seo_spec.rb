require 'rspec'
require 'nokogiri'
require 'yaml'

describe 'Header SEO tags' do
  context 'with the config file' do
    doc = Nokogiri::HTML(File.open('_site/index.html'))
    config = load_config

    {
      'name="twitter:site"': config['twitter_username'],
      'name="twitter:title"': config['title'],
      'name="twitter:description"': config['description'],
      'name="twitter:image"': config['share_image'],
      'name="twitter:card"': "summary_large_image",
      'property="og:type"': "website",
      'property="og:site_name"': config['title'],
      'property="og:url"': config['url'],
      'property="og:title"': config['title'],
      'property="og:description"': config['description'],
      'property="og:image"': config['share_image']
    }.each do |name, content|
      it "contains <meta #{name}>" do
        meta_tags = doc.xpath(%Q{/html/head/meta[@#{name}]})
        
        expect(meta_tags.size).to eq(1)
        expect(meta_tags[0]['content']).to include(content)
      end
    end

    it 'contains <meta name="twitter:site"> with username starting with @ symbol' do
      meta_tags = doc.xpath('/html/head/meta[@name="twitter:site"]')
      
      expect(meta_tags[0]['content']).to match(/^@[^@]/)
    end

    it "has an existing share_image" do
      expect(File.exists?(config['share_image'])).to be_truthy
    end

    ['name="twitter:image"', 'property="og:image"'].each do |attr|
      it "contains <meta #{attr}> with absolute url" do
        meta_tags = doc.xpath(%Q{/html/head/meta[@#{attr}]})
        absolute_url = File.join(config['url'], config['share_image'])

        expect(meta_tags[0]['content']).to eq(absolute_url)
      end
    end
  end
end
