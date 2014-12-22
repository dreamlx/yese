ActiveAdmin.register Gallery do


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
permit_params :image

  index do
    column :id 
    column :venue_id do |v|
      v.venue.title unless v.venue.nil?
    end
    column :image

    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs 'Content' do
      f.input :image, as: :file
    end
    f.actions
  end
end
