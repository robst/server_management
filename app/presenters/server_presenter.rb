class ServerPresenter < BasePresenter

  def display_name
    company_icon(model.company_name) << server_icon(name)
  end
end
