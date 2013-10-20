class Product < ActiveRecord::Base
  attr_accessible :detail, :name, :photo

  has_attached_file :photo, :styles => {	:small => "150x175",
                                          :medium => "400x400",
                                          :big => "800x600",
                                          :large => "1024x768"},
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 15.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


  def previous
    Product.where('products.id < ?', self.id).first
  end

  def next
    Product.where('products.id > ?', self.id).first
  end


end
