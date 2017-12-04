require 'rspec'
require 'nokogiri'
require 'yaml'

describe 'Google Tag Manager' do
  context 'quando o ID do GTM está definido no arquivo _data/google.yml' do
    let(:doc) { Nokogiri::HTML(File.open('_site/index.html')) }
    let(:google_id) { load_data('google').fetch('gtm') }

    it 'define a tag <script> dentro de <head>' do
      elements = doc.xpath(%Q{/html/head/script[contains(., "#{google_id}")]})

      expect(elements.size).to eq(1)
    end

    it 'define a tag <noscript> dentro do <body>' do
      elements = doc.xpath(%Q{/html/body/*[1]/iframe[contains(@src, "#{google_id}")]})

      expect(elements.size).to eq(1)
    end
  end
end