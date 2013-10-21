# encoding: utf-8

# コマンドライン引数に関する設定
module Configuration
  module Options
    class << self
      attr_reader :banner, :accepts, :required, :defaults
    end

    # Help の最初に表示する文章
    @banner = "Usage: scraping [options] \<place ID\>"

    # コマンドライン引数の必須項目
    @required = []

    # 許可するコマンドライン引数と、その説明
    @accepts = {
      type: ['--type VAL', '町域のタイプ（県全体での取得[division]か、市単位での取得[city]。デフォルトは city）'],
      mode: ['--mode INT', '対象となる地価情報（地価公示のみ[0]、都道府県地価調査のみ[1]、0,1両方[2]。デフォルトは 2'],
      year_from: ['--year_from INT', '取得したい地価情報の調査年の開始年（デフォルトは今の年）'],
      year_to: ['--year_to INT', '取得したい地価情報の調査年の終了年（デフォルトは今の年）'],
      usage: ['--usage VAL', '利用区分（デフォルトは住宅に関する区分のみ）'],
      page: ['--page VAL', 'アクセスするページ（デフォルトは1）'],
      amount: ['--amount VAL', '取得する地価情報の最大個数。全て取得する場合は-1（デフォルトは-1）'],
      last_year: ['--last_year VAL', '???'],
      chi: ['--chi VAL', '???（デフォルトは空）'],
      pfr: ['--pfr VAL', '???（デフォルトは空）'],
      pto: ['--pto VAL', '???（デフォルトは空）'],
    }

    # コマンドライン引数のデフォルト値
    @defaults = {
      id: nil,
      mode: 2,
      type: 'city',
      year_from: Time.now.year,
      year_to: Time.now.year,
      usage: [0, 3, 10].join(','),
      last_year: 1,
      page: 1,
      amount: -1,
      chi: '',
      pfr: '',
      pto: '',
    }
  end
end

