require_relative "../../environment"

class CreateEmployeesTable < ActiveRecord::Migration[4.2]
  def up
    create_table :employees do |t|
      t.references :position
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
    end
    puts "ran up employees method"
  end

  def down
    drop_table :employees
    puts "ran down employees method"
  end
end

CreateEmployeesTable.migrate(ARGV[0])
