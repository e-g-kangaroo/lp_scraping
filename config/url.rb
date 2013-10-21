module Configuration
  module Url
    class << self
      attr_reader :base_url
    end

    @base_url = 'http://www.land.mlit.go.jp/landPrice/SearchServlet'
  end
end
