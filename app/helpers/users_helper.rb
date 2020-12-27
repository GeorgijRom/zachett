module UsersHelper

  # Возвращает граватар для данного пользователя
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.log.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.log, class: "gravatar")
  end
end