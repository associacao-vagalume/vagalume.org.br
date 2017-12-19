require 'rspec'

describe 'Transparência' do

  context 'quando os relatórios estão definidos no arquivo _data/transparencia.yml' do
    let(:relatorios) { load_data('transparencia') }
    
    context 'quando olhando para o arquivo' do
      let(:capas) { relatorios.fetch('atividades').map { |a| a.fetch('capa') }}
  
      it 'todas as imagens existem' do
        expect(capas).to all(
          satisfy do |url|
            path = File.join('.', url)
            File.file?(path)
          end)
      end
    end

    context 'quando olhando para a página' do
      let(:pagina) { load_page('transparencia') }

      shared_examples 'relatorios' do |tipo_relatorio|
        let(:elementos) { pagina.css(".#{tipo_relatorio} li a") }
        let(:esperado) { relatorios.fetch(tipo_relatorio)}

        context "quando olhando para os relatórios de #{tipo_relatorio}" do
          it "contém todos os itens" do
            expect(elementos.size).to eq(esperado.size)
          end
          
          it 'contém os links corretos' do
            expect(elementos.map { |a| a.attr('href') }).to eq(esperado.map{ |a| a.fetch('link') })
          end
          
          it 'contém os textos corretos' do
            expect(elementos.map { |a| a.content.strip }).to eq(esperado.map{ |a| a.fetch('texto') })
          end
        end
      end

      it_behaves_like('relatorios', 'atividades')
      it_behaves_like('relatorios', 'auditorias')

      context 'quando olhando para os relatórios de atividades' do
        let(:elementos) { pagina.css('.atividades img') }
        it 'contem imagens das capas' do
          expect(elementos.map { |e| e.attr('src') }).to eq(relatorios.fetch('atividades').map{ |a| a.fetch('capa') })
        end
      end
    end
  end
end