require 'rspec'
require 'nokogiri'
require 'yaml'

describe 'Google Tag Manager' do
  context 'with the config file' do
    let(:doc) { Nokogiri::HTML(File.open('_site/index.html')) }
    let(:google_id) { load_config['gtm'] }

    it 'defines <script> in the <head> tag' do
      elements = doc.xpath(%Q{/html/head/script[contains(., "#{google_id}")]})

      expect(elements.size).to eq(1)
    end

    it 'defines <noscript> in the <body> tag' do
      elements = doc.xpath(%Q{/html/body/*[1]/iframe[contains(@src, "#{google_id}")]})

      expect(elements.size).to eq(1)
    end
  end
end