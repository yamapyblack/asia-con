module MaterialsHelper
  # hashtags
  def render_with_hashtags(description)
    description.gsub(/[#][\w]+/){|tag| link_to tag, root_path(hashtag: tag.delete("#"))}.html_safe
  end 

  # form image preview
  def get_material_init_mage(material, is_edit, num)
    case num
    when 1 then
      ( material.image_1.present? && is_edit ) ? image_tag(material.image_1.to_s) : content_tag(:i, content_tag(:span, "\nrequired"), class: 'fa fa-camera')
    when 2 then
      ( material.image_2.present? && is_edit ) ? image_tag(material.image_2.to_s) : content_tag(:i, '', class: 'fa fa-camera')
    when 3 then
      ( material.image_3.present? && is_edit ) ? image_tag(material.image_3.to_s) : content_tag(:i, '', class: 'fa fa-camera')
    when 4 then
      ( material.image_4.present? && is_edit ) ? image_tag(material.image_4.to_s) : content_tag(:i, '', class: 'fa fa-camera')
    when 5 then
      ( material.image_5.present? && is_edit ) ? image_tag(material.image_5.to_s) : content_tag(:i, '', class: 'fa fa-camera')
    else
    end
  end
end
