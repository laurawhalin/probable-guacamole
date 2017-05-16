# probable-guacamole

This is a ruby program that uses ActiveRecord to track employees, their positions and salaries, bank account information, health insurance plan, and paid time off.

To get started, fork or clone the repo and run `bundle install`

Then from the commandline, run the database migrations by pasting in the following:
```
ruby db/migrations/001_create_position_table.rb up
ruby db/migrations/002_create_positions_table.rb up
ruby db/migrations/003_create_salaries_table.rb up
ruby db/migrations/004_create_bank_accounts_table.rb up
ruby db/migrations/005_create_health_insurance_plans_table.rb up
ruby db/migrations/006_create_paid_time_offs_table.rb up
```

*******************
This is as far as I got, so thank you for reviewing my code. It wasn't clear to me whether I should use Rails to complete this challenge or not, and since it wasn't specifically mentioned, I opted not to use it. Since I hadn't ever done this before, it took up quite a bit of my time.

I did opt to add a few more models, the health insurance plan model and the paid time off model. I don't think these are required to track an employee, but they would be beneficial for an HR person to help keep track of many employees. The time off table is very basic, however. The attributes I added were to allow for some flexibility, in case an employee wants to take a sick day, rather than a vacation day, or only wanted to take a half day off rather than an entire full 8 hour day. This would have been a fun model to write some specs for.

My next step would have been to write some model tests to make sure that the migrations I wrote contained the attributes I wanted, and that the foreign keys connecting the tables were also in place correctly. For this, I like to use shoulda-matchers, which shoulda worked here since we are using ActiveRecord.

After confirming the models, I would have started getting the CRUD actions in place, probably using some curl commands to populate the database, and using some sort of formula to specify which model we were acting upon.

