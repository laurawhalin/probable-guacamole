require_relative "../../environment"

class CreateSalaryTable < ActiveRecord::Migration[4.2]
  def up
    create_table :salaries do |t|
      t.references :employee
      t.string :amount
    end
    puts "ran up salary method"
  end

  def down
    drop_table :salaries
    puts "ran down salary method"
  end
end

CreateSalaryTable.migrate(ARGV[0])
