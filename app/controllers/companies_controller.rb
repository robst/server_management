class CompaniesController < ApplicationController
  expose :companies, -> { Company.includes(servers: [:server_users]) }
  expose :company

  before_action :save_and_render_on_error!, only: :create

  def index; end
  def show; end;
  def new; end;
  def create; end;

  private

  def save_and_render_on_error!
    render :new and return unless company.save
  end

  def company_params
    params.require(:company).permit(:name)
  end
end
