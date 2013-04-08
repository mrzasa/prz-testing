class Student < ActiveRecord::Base
  attr_accessible :card_number, :email, :first_name, :last_name
end
