require 'rspec'

describe 'Menu' do

  context 'quando os itens do menu estão definidos em data/menu.yml' do
    let(:doc) { load_home }
    let(:menu_data) { load_data('menu') }
    let(:url_antigo) { load_config.fetch('url_antigo') }

    shared_examples 'menu' do |class_name, menu_name|
      subject do
        doc.css(".#{class_name} a").map do |e|
          { "nome" => e.content, "link" => e['href'] }
        end
      end

      it "#{menu_name} contém todos os itens especificados" do
        expected_items = menu_data[menu_name].map do |item|
          item.tap do |i|
            i['link'] = i['link'].sub('$antigo$', url_antigo)
          end
        end

        is_expected.to eq(expected_items)
      end

    end

    it_behaves_like('menu', 'navbar-primary', 'principal')
    it_behaves_like('menu', 'navbar-secondary', 'secundario')
    
  end

end