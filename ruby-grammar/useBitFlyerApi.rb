#bitFlyer Lightning API Playground
#GET /v1/getboard
#板情報を取得するコード

#0.ライブラリを読み込み
require 'net/http'
require 'uri'

#1.エンドポイントURLにアクセス
uri = URI.parse("https://api.bitflyer.com")

#2.リクエストのURLを指定
uri.path = '/v1/getboard'

#3.どの取引の情報を取得するかを指定
# uri.query = ''

#4.HTTP通信を行うための設定
https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true

#5.リクエストを行い、取得したデータをレスポンスに格納
response = https.get uri.request_uri

#6.レスポンスを出力
puts response.body.first