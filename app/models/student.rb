class Student < ActiveRecord::Base
  attr_accessible :card_number, :email, :first_name, :last_name
  validates :email, format: /@prz.edu.pl/, allow_blank: true

  def self.by_first_name(name)
    where(first_name: name)
  end
end
