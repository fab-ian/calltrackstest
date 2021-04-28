# frozen_string_literal: true

class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.integer :employee_id, null: false
      t.integer :organization_id, null: false
      t.decimal :amount, null: false
      t.date :date, null: false
    end
  end
end
