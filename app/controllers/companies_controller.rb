class CompaniesController < ApplicationController
  expose :companies, -> { Company.joins(:servers) }
  def index; end
end
