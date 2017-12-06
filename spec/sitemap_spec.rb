require 'rspec'

describe 'Site Map' do
  context 'quando o site é gerado' do

    subject { File.file?('_site/sitemap.xml') }

    it 'cria um arquivo sitemap.xml na raiz' do
      is_expected.to be true
    end

  end
end