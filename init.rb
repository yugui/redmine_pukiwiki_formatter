# Redmine PukiWiki formatter
require 'redmine'
require 'pukipa'
require 'pukiwikiparser'

RAILS_DEFAULT_LOGGER.info 'Starting PukiWiki formatter for RedMine'

Redmine::Plugin.register :redmine_rd_formatter do
  name 'Pukiwiki formatter'
  author 'Yuki Sonoda (Yugui)'
  description 'This provides PukiWiki as a wiki format'
  version '0.0.1'

  wiki_format_provider 'PukiWiki', RedminePukiwikiFormatter::WikiFormatter, RedminePukiwikiFormatter::Helper
end
