class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true

  class << self
    def select_by_category(category)
      # whereメソッドを使って引数で渡されたカテゴリのレコードを取得しよう
      # 例) where(xxxxx: xxxxx)

    end

    def detect_by_category(category)
      # find_byメソッドを使って引数で渡されたカテゴリのレコードを1つ取得しよう

    end

    def count_by_category(category)
      # countメソッドを使って引数で渡されたカテゴリのレコード数を取得しよう

    end

    def all_titles
      # pluckメソッドを使って全レコードのtitleを配列で取得しよう

    end

    def select_by_category_name_with_joins(name)
      # joinsメソッドを使って引数で渡されたカテゴリ名で絞ってレコードを取得しよう

    end

    def select_by_category_name_with_includes(name)
      # includesとreferencesメソッドを使って引数で渡されたカテゴリ名で絞ってレコードを取得しよう

    end

    def group_by_category
      # groupメソッドを使ってカテゴリでレコードをグルーピングして取得しよう

    end

    def task_count_by_category
      # groupメソッドとSQLのcountを使ってカテゴリ毎のタスク数を取得しよう

    end
  end
end