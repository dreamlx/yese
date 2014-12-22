ActiveAdmin.register Venue do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :title, 
                :address, 
                :location, 
                :description, 
                :parking, 
                :eating, 
                :visa, 
                :other, 
                :tel, 
                :business_hours, 
                :price,
                :avatar


form(:html => { :multipart => true }) do |f|
    f.inputs 'Content' do
      f.input :title
      f.input :address
      f.input :description
      f.input :parking
      f.input :eating
      f.input :visa
      f.input :other
      f.input :tel
      f.input :business_hours
      f.input :price
      f.input :avatar, as: :file
    end
    f.actions
  end
end
