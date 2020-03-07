# README
Ruby/Railsトレーニングアプリ

### Version
- ruby 2.6.3
- rails 6.0.2.1

## 環境構築
```
$ bundle install --path vendor/bundle
$ yarn install
$ bundle exec rails db:create
$ bundle exec rails db:migrate
```

## 課題1
- 様々なRubyのメソッドを使ってみよう
  - 以下のコマンドを実行して全て出力が緑色になるように `app/models/prefecture.rb` にコードを追加してください。
    - `bundle exec rspec ./spec/models/prefecture_spec.rb`
    - **※) RSpec側のコードは変更しない**
  - 回答はこちらの[PR](https://github.com/Matsushin/rails-training/pull/1) を参照
  
## 課題2
- 様々なRailsのActiveRecordのメソッドを使ってみよう
  - 以下のコマンドを実行して全て出力が緑色になるように `app/models/prefecture.rb` にコードを追加してください。
    - `bundle exec rspec ./spec/models/task_spec.rb`
    - **※) RSpec側のコードは変更しない**
  - 回答はこちらの[PR](https://github.com/Matsushin/rails-training/pull/2) を参照