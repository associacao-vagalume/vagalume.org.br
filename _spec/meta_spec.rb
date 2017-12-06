require 'rspec'

describe 'Meta tags' do

  context 'quando o arquivo _config.yml está configurado' do
    doc = load_home
    config = load_config

    {
      robots: 'index, follow',
      description: config.fetch('description'),
      keywords: config.fetch('keywords').join(', ')
    }.each do |name, content|
      it %Q{define a tag <meta name="#{name}"> dentro de <head>} do
        tags = doc.xpath(%Q{/html/head/meta[@name="#{name}"]})
  
        expect(tags.size).to eq(1)
        expect(tags[0]['content']).to eq(content)
      end
    end

    it 'define a tag <title> dentro de <head>' do
      elements = doc.xpath('/html/head/title')
    
      expect(elements.size).to eq(1)
      expect(elements[0].content).to eq(config.fetch('title'))
    end

  end

end