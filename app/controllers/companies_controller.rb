class CompaniesController < ApplicationController
  expose :companies, -> { Company.includes(servers: [:server_users]) }
  expose :company

  before_action :save_and_render_on_error!, only: [:create, :update]
  before_action :push_company_contact_if_empty!, only: [:new, :edit]

  def index; end
  def show; end;
  def new; end;
  def create; end;
  def edit
    render :new
  end
  def update
    company.attributes = company_params
  end

  private

  def push_company_contact_if_empty!
    company.company_contacts.build if company.company_contacts.empty?
  end

  def save_and_render_on_error!
    render :new and return unless company.save
  end

  def company_params
    params.require(:company).
      permit(:name, company_contacts: [:name, :telephone_number, :mail])
  end
end
