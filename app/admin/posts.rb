ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :user_id 
#
# or
#
# permit_params :title, :description

# some other code

  form do |f|
    f.inputs "Post" do
      f.input :title
      f.input :description
      f.input :user_id
    end
    f.actions
  end


end
