class BasePresenter < SimpleDelegator
  attr_accessor :options
  def initialize model, view = nil
    @view = view
    super(model)
  end

  def self.present_collection collection, view = nil
    collection.collect{ |object| self.new(object, view) }
  end

  private

  def company_icon name
    h.content_tag :span, name, class: 'glyphicon glyphicon-blackboard'
  end

  def user_icon name
    h.content_tag :span, name, class: 'glyphicon glyphicon-user'
  end

  def server_user_icon name
    h.content_tag :span, name, class: 'glyphicon glyphicon-home'
  end

  def server_icon name
    h.content_tag :span, name, class: 'glyphicon glyphicon-cloud'
  end

  def h
    @view
  end

  def model
    __getobj__
  end
end
