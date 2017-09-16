# Add category id to gist table by generating a migration
class AddCategoryIdToGists < ActiveRecord::Migration[5.1]
  def change
    add_column :gists, :category_id, :integer
  end
end
