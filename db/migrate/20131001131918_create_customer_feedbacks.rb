class CreateCustomerFeedbacks < ActiveRecord::Migration
  def change
    create_table :customer_feedbacks do |t|
      t.string :company_name
      t.string :person_name
      t.text :address
      t.string :tel_no
      t.string :fax_no
      t.string :email
      t.text :req_detail

      t.timestamps
    end
  end
end
