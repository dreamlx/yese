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
                :avatar,
                galleries_attributes: [:id, :image, :venue_id, :remove_image, :_destroy ]


  index do
    column :id
    column :title
    column :avatar do |v|
      image_tag "#{v.avatar.url}?imageView2/1/w/128" unless v.avatar.url.blank?
    end

    actions
  end

  show do |v|
     attributes_table do
      row :id
      row :title
      row :address
      row :description
      row :parking
      row :eating
      row :visa
      row :other
      row  :tel
      row :business_hours
      row :price
      row :avatar do
        link_to image_tag("#{v.avatar.url}?imageView2/1/w/256"), v.avatar.url unless v.avatar.url.blank?
      end

      panel t('bean_collocation_items') do
        table_for(v.galleries) do |g|
          g.column :id
          g.column :venue_id
          g.column :image do |i|
            link_to image_tag("#{i.image.url}?imageView2/1/w/256"), i.image.url unless i.image.url.blank?
          end
        end
      end
    end

  end

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

      f.input :avatar, as: :file, :hint => f.object.avatar.present? \
          ? f.template.image_tag("#{f.object.avatar.url}?imageView2/1/w/256")
          : f.template.content_tag(:span, "no image yet")
      f.input :avatar_cache, :as => :hidden


    end

    f.inputs  do
      f.has_many :galleries, :allow_destroy => true, :new_record => true do |g|
          #g.input :id, label: :id
          g.input :image, as: :file, :hint => g.object.image.present? \
            ? f.template.image_tag("#{g.object.image.url}?imageView2/1/w/128")
            : f.template.content_tag(:span, "no image yet"), :label => :id

        end

    end
    f.actions
  end
end
