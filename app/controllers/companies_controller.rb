class CompaniesController < ApplicationController
  expose :companies, -> { Company.includes(servers: [:server_users]) }
  expose :company, -> { 
    Company.
      includes(:company_contacts, servers: [:server_users]). 
      find(params[:id])
  }

  def index; end
  def show; end;
end
