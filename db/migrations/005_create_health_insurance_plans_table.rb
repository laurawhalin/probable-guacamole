require_relative "../../environment"

class CreateHealthInsurancePlanTable < ActiveRecord::Migration[4.2]

  def up
    create_table :health_insurance_plans do |t|
      t.references :employee
      t.string :plan_name
      t.integer :dependents
    end
    puts "ran up health_insurance_plans method"
  end

  def down
    drop_table :health_insurance_plans
    puts "ran down health_insurance_plans method"
  end
end

CreateHealthInsurancePlanTable.migrate(ARGV[0])
