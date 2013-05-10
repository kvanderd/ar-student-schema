require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    #Active Record creates primary key automatically?
      create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday # or datetime
      t.string :email
      t.string :phone
     
       end
   end
end
