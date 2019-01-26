require 'rspec'

describe 'Google Tag Manager' do
  context 'quando o ID do GTM está definido no arquivo _data/google.yml' do
    let(:doc) { load_home }
    let(:google_id) { load_data('google').fetch('aw') }

    it 'define a tag <script> dentro de <head>' do
      elements = doc.xpath(%Q{/html/head/script[contains(., "#{google_id}")]})

      expect(elements.size).to eq(1)
    end
  end
end
