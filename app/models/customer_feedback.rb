class CustomerFeedback < ActiveRecord::Base
  attr_accessible :address, :company_name, :email, :fax_no, :person_name, :req_detail, :tel_no
  validates_presence_of :company_name, :email, :person_name, :tel_no, :req_detail
  validates :tel_no, :numericality => {:only_integer => true}
end
