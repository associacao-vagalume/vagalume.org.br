require 'rspec'

describe 'Menu' do

  context 'quando os itens do menu estão definidos em data/menu.yml' do
    let(:menu_data) { load_data('menu') }
    let(:url_antigo) { load_config.fetch('url_antigo') }

    ['pt', 'en'].each do |lang|
      [['principal', 'navbar-primary'], ['secundario', 'navbar-secondary']].each do |items|
        menu_name, class_name = items

        actual_items = load_home_lang(lang).css(".#{class_name} a").map do |e|
          { "nome" => e.content, "link" => e['href'] }
        end

        it "#{menu_name} contém todos os itens especificados em #{lang}" do
          expected_items = menu_data[lang][menu_name]

          expect(actual_items).to eq(expected_items)
        end
      end
    end

  end

end
