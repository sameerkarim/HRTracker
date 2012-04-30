module UsersHelper
  
  #Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    # Something is wrong with how this MD5 is working on these email addresses. Need to figure this out later, but it's certainly not critical.
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    image_tag(gravatar_url, alt:user.name, class: "gravatar")
  end
end
