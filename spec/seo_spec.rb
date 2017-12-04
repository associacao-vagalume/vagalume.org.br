require 'rspec'
require 'nokogiri'
require 'yaml'

describe 'Header SEO tags' do
  context 'quando o arquivo _config.yml está configurado' do
    doc = Nokogiri::HTML(File.open('_site/index.html'))
    config = load_config

    {
      'name="twitter:site"': config.fetch('twitter_username'),
      'name="twitter:creator"': config.fetch('twitter_username'),
      'name="twitter:card"': "summary_large_image",
      'property="og:type"': "website",
      'property="og:site_name"': config.fetch('title'),
      'property="og:url"': config.fetch('url'),
      'property="og:title"': config.fetch('title'),
      'property="og:description"': config.fetch('description'),
      'property="og:image"': config.fetch('share_image'),
      'property="og:image:alt"': config.fetch('share_image_alt')
    }.each do |name, content|
      it "contém a tag <meta #{name}> dentro de <head>" do
        meta_tags = doc.xpath(%Q{/html/head/meta[@#{name}]})

        expect(meta_tags.size).to eq(1)
        expect(meta_tags[0]['content']).to include(content)
      end
    end

    ['name="twitter:site"', 'name="twitter:creator"'].each do |name|
      it "contém a tag <meta #{name}> com nome de usuário começando com @" do
        meta_tags = doc.xpath("/html/head/meta[@#{name}]")

        expect(meta_tags[0]['content']).to match(/^@[^@]/)
      end
    end

    it "possui uma imagem existente definida em 'share_image'" do
      expect(File.exists?(config.fetch('share_image'))).to be_truthy
    end

    it %Q{contém a tag <meta property="og:image"> com 'url' absoluta} do
      meta_tags = doc.xpath('/html/head/meta[@property="og:image"]')
      absolute_url = File.join(config.fetch('url'), config.fetch('share_image'))

      expect(meta_tags[0]['content']).to eq(absolute_url)
    end

  end
end
