# コマンドライン引数に関する設定
module Configuration
  module Scraping
    class << self
      attr_reader :defaults
    end

    @defaults = {
      no: nil,
      check_date: nil,
      address: '',
      price: nil,
      space: nil,
      structure: '',
    }

    @row = [
      
    ]

  end
end

