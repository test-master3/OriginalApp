class AddQuizEnabledToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :quiz_enabled, :boolean
  end
end
