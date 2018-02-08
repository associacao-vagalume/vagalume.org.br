require 'rspec'

describe 'Google Tag Manager' do
  context 'quando o ID do GTM está definido no arquivo _data/google.yml' do
    let(:doc) { load_home }
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

describe 'Link externo para doação' do
  context 'Na página inicial' do
    let(:doc) { load_home }
    let(:url_doar) { load_config.fetch('url_doar') }

    it 'encontra os links de doação' do
      links_encontrados = doc.css('a.doar').map { |e| e['href'] }

      expect(links_encontrados).to all(eq url_doar)
    end
  end
end
