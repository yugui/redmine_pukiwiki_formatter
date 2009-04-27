require 'pukiwikiparser'
require 'pukipa'

module RedminePukiwikiFormatter
  class WikiFormatter
    def initialize(text)
      @pukipa = Pukipa.new(text)
    end
    def to_html(&block)
      @pukipa.to_html
    end
  end
end
