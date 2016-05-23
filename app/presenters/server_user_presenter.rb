class ServerUserPresenter < BasePresenter

  def display_name
    "#{model.company_name}: #{name}"
  end
end
