require_relative "../../environment"

class CreateBankAccountTable < ActiveRecord::Migration[4.2]
  def up
    create_table :bank_accounts do |t|
      t.references :employee
      t.string :bank_name
      t.integer :account_number
      t.integer :routing_number
    end
    puts "ran up bank_account method"
  end

  def down
    drop_table :bank_accounts
    puts "ran down bank_account method"
  end
end

CreateBankAccountTable.migrate(ARGV[0])
