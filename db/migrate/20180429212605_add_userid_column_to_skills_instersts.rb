class AddUseridColumnToSkillsInstersts < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :user_id, :integer
    add_column :interests, :user_id, :integer
  end
end
