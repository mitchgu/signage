require 'slim'

###
# Page options, layouts, aliases and proxies
###

config[:api] = "sample_api"

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :autoprefixer

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def to_id(name)
    # Basic replacement of chars that can't appear in ids
    return name.tr("~!@$%^&*()+=,./';:\"?><[]\{}|`# ", "-")
  end

  def resource_id(resource)
    return "r-" + to_id(resource.name)
  end

  def endpoint_id(resource, endpoint)
    return resource_id(resource) + "-e-" + to_id(endpoint.name)
  end
end

# Build-specific configuration
configure :build do
  # Minify HTML on build
  activate :minify_html

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
