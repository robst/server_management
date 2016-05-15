class CompaniesController < ApplicationController
  expose :companies, -> { Company.includes(servers: [:server_users]) }
  def index; end
end
