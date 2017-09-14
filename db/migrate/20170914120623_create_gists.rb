class CreateGists < ActiveRecord::Migration[5.1]
  def change
    create_table :gists do |t|
      t.string :filename
      t.text :description
      t.text :code

      t.timestamps
    end
  end
end
