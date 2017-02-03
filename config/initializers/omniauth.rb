
Rails.application.config.middleware.use OmniAuth::Builder do

  provider :linkedin, "86lm51gwkp0qnq", "JNDd5CPl6KyWTmdB",
  :scope => 'r_basicprofile r_emailaddress r_network', :fields => ['id', 'email-address', 'first-name', 'last-name']

end
