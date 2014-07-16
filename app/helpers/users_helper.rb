module UsersHelper

	def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://lolph.wikia.com/wiki/File:Avatar_Vayne.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
