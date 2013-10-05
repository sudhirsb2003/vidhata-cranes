ActiveAdmin.setup do |config|

  config.site_title = "Vidhata Cranes"
  config.site_title_link = "/"    ## Rails url helpers do not work here
  config.authentication_method = :authenticate_admin_user!
  config.current_user_method = :current_admin_user
  config.logout_link_path = :destroy_admin_user_session_path
  config.batch_actions = true

end
