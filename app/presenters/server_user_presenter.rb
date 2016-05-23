class ServerUserPresenter < BasePresenter

  def display_name
    company_icon(model.company_name) << server_user_icon(name)
  end
end
