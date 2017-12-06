require 'rspec'

describe 'Parceiros' do

  context 'quando os parceiros estão definidos no arquivo _data/parceiros.yml' do
    let(:grupos) { load_data('parceiros') }
    let(:parceiros) { grupos.map { |grupo| grupo['lista'] }.reduce(:+) }
    let(:url_imagens) { parceiros.map {|parceiro| parceiro['url_img']} }

    context 'quando olhando para o arquivo' do

      it 'os parceiros estão definidos em grupos' do
        expect(grupos).to all(have_key('lampadas').and have_key('lista'))
      end
  
      it 'todas as imagens existem' do
        expect(url_imagens).to all(
          satisfy do |url|
            path = File.join('.', url)
            File.file?(path)
          end)
      end
    end

    context 'quando olhando para a home' do

      let(:grupos_home) do
        load_home.css('.parceiros .grupo')
      end

      let(:parceiros_agrupados_home) do
        grupos_home.map do |e|
          {
            'lampadas' => e.css('.grupo-nivel')[0]['alt'][/\d/].to_i,
            'lista' => e.css('.logo').map do |e|
              {
                'nome' => e['alt'],
                'url_img' => e['src']
              }
            end
          }
        end
      end

      let(:imagens_home) do
        parceiros_agrupados_home.map{ |g| g['lista'] }.reduce(:+)
      end

      it 'os parceiros estão agrupados' do
        expect(parceiros_agrupados_home).to eq(grupos)
      end

      it 'as imagens estão definidas' do
        expect(imagens_home).to eq(parceiros)
      end
    end

  end
end