require_relative '../../db/config'
require 'date'
# require 'time'
# implement your Student model here
class  Student < ActiveRecord::Base
# attr_accessor :name, :age
  # def initialize(args)
   
  #    @first_name = args[:first_name]
  #    @last_name = args[:last_name]
  #    @gender = args[:gender]
  #    @birthday =  args[:birthday]
    
  # end

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

  # def delete_all
  # end

end

#student = Student.new
# 

