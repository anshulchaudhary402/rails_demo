class Employee < ApplicationRecord
  has_many :documents
  validates :first_name, :last_name, presence: true
  validates :personal_email,presence: true, uniqueness: true
  validates :city, :state, :country, :pincode, :address1 ,:address2, presence: true
  validates :date_of_birth, :date_of_joining, :job_title, :about, presence: true
  def name
    "#{first_name}#{last_name}".strip
  end
  def full_address
    "#{address1},#{city},#{country},#{pincode},#{state},#{date_of_joining},#{date_of_birth},#{job_title},#{about}".strip
  end
  def name_with_email
    "#{name}(#{personal_email})"
  end
end
