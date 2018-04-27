class RenameExmapleColumnToExample < ActiveRecord::Migration[5.2]
  def change
    rename_column :skills, :exmaple, :example
  end
end
