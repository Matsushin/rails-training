class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true

  class << self

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:27
    def select_by_category(category)
      # whereメソッドを使って引数で渡されたカテゴリのtaskレコードを取得しよう
      # 例) where(xxxxx: xxxxx)

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:32
    def detect_by_category(category)
      # find_byメソッドを使って引数で渡されたカテゴリのtaskレコードを1つ取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:37
    def count_by_category(category)
      # countメソッドを使って引数で渡されたカテゴリのtaskレコード数を取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:42
    def all_titles
      # pluckメソッドを使って全レコードのtitleを配列で取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:47
    def select_by_category_name_with_joins(name)
      # joinsメソッドを使って引数で渡されたカテゴリ名で絞ってtaskレコードを取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:52
    def select_by_category_name_with_includes(name)
      # includesとreferencesメソッドを使って引数で渡されたカテゴリ名で絞ってtaskレコードを取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:57
    def group_by_category
      # groupメソッドを使ってカテゴリでtaskレコードをグルーピングして取得しよう

    end

    # RSpec実行コマンド -> bundle exec rspec ./spec/models/task_spec.rb:62
    def task_count_by_category
      # groupメソッドとSQLのcountを使ってカテゴリ毎のタスク数を取得しよう

    end
  end
end