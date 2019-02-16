ActiveAdmin.register Reply do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :body , :comment_id
#
# or
#
form do |f|
    f.inputs "Post" do
      f.input :body
      f.input :comment_id
    end
    f.actions
 end

end
