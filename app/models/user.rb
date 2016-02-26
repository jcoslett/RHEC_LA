class User < ActiveRecord::Base

  belongs_to :course
  has_and_belongs_to_many :lectures, class_name: "Course"

  alias_attribute :created_courses, :courses

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
