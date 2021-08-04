class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :pageName
      t.string :title
      t.text :body
      t.string :imageSource

      t.timestamps
    end
  end
end
