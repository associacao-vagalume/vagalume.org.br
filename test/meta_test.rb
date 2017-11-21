require 'minitest/autorun'
require 'nokogiri'
require 'yaml'

class MetaTest < Minitest::Test

  def setup
    @doc = Nokogiri::HTML(File.open('_site/index.html'))
    @config = YAML.load_file('_config.yml')
  end

  def test_head_contains_meta_robots
    meta_robots = @doc.xpath('/html/head/meta[@name="robots"]')

    refute_empty(meta_robots, 'Tag <meta name="robots"> deve estar presente')
    assert_equal(meta_robots[0]['content'], 'index, follow')
  end

  def test_head_contains_meta_description
    meta_description = @doc.xpath('/html/head/meta[@name="description"]')

    refute_empty(meta_description, 'Tag <meta name="description"> deve estar presente')
    assert_equal(meta_description[0]['content'], @config['description'])
  end
  
  def test_head_contains_meta_keywords
    meta_keywords = @doc.xpath('/html/head/meta[@name="keywords"]')

    refute_empty(meta_keywords, 'Tag <meta name="keywords"> deve estar presente')
    assert_equal(meta_keywords[0]['content'], @config['keywords'].join(', '))
  end

  def test_head_contains_title
    title = @doc.xpath('/html/head/title')

    refute_empty(title, 'Tag <title> deve estar presente')
    
    assert_equal(title[0].content, @config['title'])
  end

end