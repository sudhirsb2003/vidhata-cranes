class Contact < ActiveRecord::Base
  attr_accessible :contact_us

  acts_as_gmappable :check_process => false

	def gmaps4rails_address
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
		"#{self.contact_us}"
  end

end
