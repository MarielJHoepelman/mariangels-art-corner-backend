ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :page_name, :title, :body, :image_source
  #
  # or
  #
  permit_params do
    permitted = [:page_name, :product_name, :price, :description, :image, image_attributes: [:_destroy]]
    permitted
  end

  form do |f|
    f.inputs do
      f.input :page_name
      f.input :product_name
      f.input :price
      f.input :description
      f.input :image, required: true, as: :file

      if f.object.image.present?
        span image_tag(f.object.image.url(:thumb))
        f.semantic_fields_for :image_attributes do |image_fields|
          image_fields.input :_destroy, as: :boolean, label: 'Delete?'
        end
      end
    end

    f.actions
  end

end
