require_relative "../../environment"

class CreatePaidTimeOffTable < ActiveRecord::Migration[4.2]

  def up
    create_table :paid_time_offs do |t|
      t.references :employee
      t.string :pto_type
      t.datetime :start_date
      t.datetime :end_date
      t.integer :hours_taken
    end
    puts "ran up paid_time_off method"
  end

  def down
    drop_table :paid_time_offs
    puts "ran down paid_time_off method"
  end
end

CreatePaidTimeOffTable.migrate(ARGV[0])
