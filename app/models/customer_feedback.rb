class CustomerFeedback < ActiveRecord::Base
  attr_accessible :address, :company_name, :email, :fax_no, :person_name, :req_detail, :tel_no
end
