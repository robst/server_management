class CompaniesController < ApplicationController
  expose :companies, -> { Company.includes(servers: [:server_users]) }
  expose :company

  def index; end
  def show; end;
  def new; end;
end
