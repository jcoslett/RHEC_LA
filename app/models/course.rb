class Course < ActiveRecord::Base
  has_many :users
  #belongs_to :created_by, class_name: "User"
  #has_and_belongs_to_many :enrolled, class_name: "User"
end
