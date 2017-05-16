require_relative "../../environment"

class CreatePositionTable < ActiveRecord::Migration[4.2]
  def up
    create_table :positions do |t|
      t.string :name
      t.string :employment_type
    end
    puts "ran up position method"
  end

  def down
    drop_table :positions
    puts "ran down position method"
  end
end

CreatePositionTable.migrate(ARGV[0])
