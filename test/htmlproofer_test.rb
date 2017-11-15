require 'html-proofer'
require 'minitest/autorun'

class HTMLProoferTest < Minitest::Test
  def test_run_proofer
    options = { :assume_extension => true, :check_html => true}
    HTMLProofer.check_directory("./_site", options).run
  end
end
