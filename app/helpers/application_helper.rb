module ApplicationHelper

  def default_meta_tags
    # image_logo_path = root_url + asset_path('asiacon_logo.png')
    image_logo_path =  root_url.slice(0..-2) + asset_path('asiacon_logo_for_facebook.png') # need slice becouse // is duplicated
    {
      viewport: 'width=device-width, initial-scale=1',
      'og:type': 'article',
      'og:site_name': 'Asia Construction',
      'og:url': 'asia-con.com',
      'fb:app_id': '',
      'og:description': 'Easy way to find Construction material in Cambodia!!',
      'og:image': image_logo_path
    }
  end

  # description excerpt
  def excerpt( text, len = 360 )
    text.present? && text.length > len ? text.slice(0, len) : text
  end

end
