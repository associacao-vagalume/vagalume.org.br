require 'rspec'
require 'byebug'

describe 'Parceiros da Vaga Lume' do

    let(:dados) { load_data('parceiros') }

    context 'no arquivo _data/parceiros.yml' do

      it 'contém financiadores e apoiadores' do
        expect(dados).to have_key('financiadores').and have_key('apoiadores')
      end

      it 'as imagens existem' do
        url_imagens = obtem_imagens(dados)

        expect(url_imagens).to all(
          satisfy do |url|
            path = File.join('.', url)
            File.file?(path)
          end)
      end

      it 'os financiadores são agrupados em lâmpadas' do
        financiadores = obtem_financiadores(dados)

        expect(financiadores).to all(have_key('lampadas'))
      end

      it 'os apoiadores são agrupados em serviços' do
        apoiadores = obtem_apoiadores(dados)

        expect(apoiadores).to all(have_key('servico'))
      end
    end

    context 'na página Home' do

      let(:home) { load_home }

      it 'aparecem dois primeiros grupos de financiadores' do
        parceiros_arquivo = obtem_financiadores(dados).take(2)
        grupos_parceiros = obtem_financiadores_home(home)

        expect(grupos_parceiros).to eq(parceiros_arquivo)
      end

      it 'as imagens estão definidas' do
        imagens = obtem_imagens(dados)
        imagens_home = obtem_imagens_home(home)

        expect(imagens_home - imagens).to be_empty
      end
    end

end

def obtem_imagens_home(home)
  home.css('.parceiros .grupo .logo').map{ |img| img['src'] }
end

def obtem_financiadores_home(home)
  home.css('.parceiros .grupo').map do |e|
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

def obtem_financiadores(dados)
  dados.fetch('financiadores')
end

def obtem_apoiadores(dados)
  dados.fetch('apoiadores')
end

def obtem_imagens(dados)
  grupos_parceiros = [obtem_apoiadores(dados), obtem_financiadores(dados)].flatten
  parceiros = grupos_parceiros.map { |grupo| grupo.fetch('lista') }.flatten
  imagens = parceiros.map { |parceiro| parceiro.fetch('url_img') }
  
  imagens
end