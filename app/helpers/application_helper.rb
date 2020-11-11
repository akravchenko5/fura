module ApplicationHelper
  def avatar_helper
    if user_signed_in?
      image_tag "https://avatars3.githubusercontent.com/u/22182318?s=400&u=8262e9bd2906ddcceed183ddc2acb82c1500ca83&v=4"
    else
      icon('fas', 'user-circle', style: 'font-size: 35px; color:white;')
    end
  end
end