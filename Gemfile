ruby '~> 2.4.2'

source 'https://rubygems.org' do
  gem 'jekyll'
  gem 'json'
  gem 'rake'

  platforms :x64_mingw do
    gem 'tzinfo-data'
  end

  group :jekyll_plugins do
    gem 'bootstrap'
    gem 'jekyll-admin'
    gem 'jekyll-assets'
    gem 'jekyll-last-modified-at'
    gem 'jekyll-sitemap'
    gem 'liquid_pluralize'
  end

  gem "byebug", :groups => [:development, :test]

  group :test do
    gem 'html-proofer'
    gem "rspec"
  end
end
