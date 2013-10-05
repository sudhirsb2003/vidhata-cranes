ActiveAdmin.register Product do

  form do |f|
      f.inputs "Details" do
        f.input :name
        f.input :photo
      end
      f.inputs "Content" do
        f.input :detail
      end
      f.actions
    end

end
