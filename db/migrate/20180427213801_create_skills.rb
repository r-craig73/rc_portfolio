class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.column :title, :string
      t.column :exmaple, :string

      t.timestamps
    end
  end
end
