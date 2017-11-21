require 'rspec'
require 'nokogiri'
require 'yaml'

describe 'Meta tags' do

  context 'with the config file' do
    doc = Nokogiri::HTML(File.open('_site/index.html'))
    config = load_config

    {
      robots: 'index, follow',
      description: config['description'],
      keywords: config['keywords'].join(', ')
    }.each do |name, content|
      it %Q{defines the tag <meta name="#{name}">} do
        tags = doc.xpath(%Q{/html/head/meta[@name="#{name}"]})
  
        expect(tags.size).to eq(1)
        expect(tags[0]['content']).to eq(content)
      end
    end

    it 'sets the <title> in the <head> tag' do
      elements = doc.xpath('/html/head/title')
    
      expect(elements.size).to eq(1)
      expect(elements[0].content).to eq(config['title'])
    end

  end

end