class ServersController < ApplicationController
  expose :servers, -> { Server.all }
  def index; end
end
