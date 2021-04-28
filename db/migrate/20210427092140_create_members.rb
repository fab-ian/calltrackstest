class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :email, null: false
      t.string :name

      t.timestamps
    end
  end
end
