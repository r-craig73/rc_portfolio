class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.column :heading, :string
      t.column :body, :string

      t.timestamps
    end
  end
end
