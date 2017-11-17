require 'minitest/autorun'
require 'nokogiri'
require 'yaml'

class IndexTest < Minitest::Test

  def setup
    @doc = Nokogiri::HTML(File.open('_site/index.html'))
    @google_id = YAML.load_file('_data/google.yml')['gtm']
  end

  def test_gtm_esta_definido_no_head
    gtm_script_tag = @doc.xpath(%Q{/html/head/script[contains(., "#{@google_id}")]})
    refute_empty(gtm_script_tag, '<head> deveria conter <script> com configuração do Google Tag Manager')
  end

  def test_gtm_esta_definido_como_primeiro_filho_do_body
    gtm_script_tag = @doc.xpath(%Q{/html/body/*[1]/iframe[contains(@src, "#{@google_id}")]})
    refute_empty(gtm_script_tag, 'O primeiro elemento do <body> deveria ser a configuração do Google Tag Manager')
  end
end