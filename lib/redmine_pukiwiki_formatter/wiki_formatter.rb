require 'pukiwikiparser'

module RedminePukiwikiFormatter
  class WikiFormatter
    cattr_accessor :logger
    def initialize(text)
      @text = text
      @pukipa = PukiWikiParser.new(logger)
    end
    def to_html(&block)
      @pukipa.to_html(@text, [])
    end
  end
end
