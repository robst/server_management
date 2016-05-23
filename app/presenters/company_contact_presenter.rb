class CompanyContactPresenter < BasePresenter

  def display_name
    company_icon(model.company_name) << user_icon(name)
  end
end
