require 'rspec'

describe 'Link externo para doação' do
  context 'Na página /doe' do
    let(:doc) { load_page('doe') }
    let(:url_doar) { load_config.fetch('url_doar') }

    it 'encontra os links de doação' do
      links_encontrados = doc.css('.pagina a').map { |e| e['href'] }

      expect(links_encontrados).to all(eq url_doar)
    end
  end
end