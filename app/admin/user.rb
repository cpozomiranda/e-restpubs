ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params  [:name, :email, :password, :password_confirmation, :role] 

form do |f|
      f.inputs "User" do
      	f.input :name
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :role
      end
      f.actions
    end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
 column :id
 column :email
 column :created_at
 column :role
 actions
end

filter :email, as: :select
filter :name, as: :select


 end
