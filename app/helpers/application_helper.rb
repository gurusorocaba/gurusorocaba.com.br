module ApplicationHelper
  def development_assets
    assets_path = "#{Rails.root}/vendor/assets/development/"

    [stylesheet_link_tag(assets_path + "stylesheets/hugrid.css"),
    javascript_include_tag(assets_path + "javascripts/hugrid.js")].join.html_safe
  end
end
