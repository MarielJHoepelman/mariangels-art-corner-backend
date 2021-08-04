class ChangeColumnsName < ActiveRecord::Migration[6.0]
  def change
    rename_column :contents, :pageName, :page_name
    rename_column :contents, :imageSource, :image_source
  end
end
