class ArticleCheck < ActiveRecord::Migration[6.0]
  def change
      add_column :articles, :isChecked, :boolean, default: false
  end
end
