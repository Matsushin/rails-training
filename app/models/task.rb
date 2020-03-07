class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true

  class << self
    def select_by_category(category)
      # whereメソッドを使って引数で渡されたカテゴリのレコードを取得しよう
      # 例) where(xxxxx: xxxxx)
      where(category: category)
    end

    def detect_by_category(category)
      # find_byメソッドを使って引数で渡されたカテゴリのレコードを1つ取得しよう
      find_by(category: category)
    end

    def count_by_category(category)
      # countメソッドを使って引数で渡されたカテゴリのレコード数を取得しよう
      select_by_category(category).count
    end

    def all_titles
      # pluckメソッドを使って全レコードのtitleを配列で取得しよう
      pluck(:title)
    end

    def select_by_category_name_with_joins(name)
      # joinsメソッドを使って引数で渡されたカテゴリ名で絞ってレコードを取得しよう
      joins(:category).where(categories: { name: name})
    end

    def select_by_category_name_with_includes(name)
      # includesとreferencesメソッドを使って引数で渡されたカテゴリ名で絞ってレコードを取得しよう
      includes(:category).references(:category).where(categories: { name: name })
    end

    def group_by_category
      # groupメソッドを使ってカテゴリでレコードをグルーピングして取得しよう
      group(:category_id)
    end

    def task_count_by_category
      # groupメソッドとSQLのcountを使ってカテゴリ毎のタスク数を取得しよう
      group(:category_id).select('count(*) as task_count')
    end
  end
end