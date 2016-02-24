class Course < ActiveRecord::Base
  belongs_to :created_by, class_name: "User"
  has_and_belongs_to_many :enrolled, class_name: "User"
end
