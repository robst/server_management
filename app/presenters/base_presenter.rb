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

  def icon name, css_class
    h.content_tag :span, name, class: "glyphicon glyphicon-#{css_class}"
  end

  def company_icon name
    icon name, :blackboard
  end

  def user_icon name
    icon name, :user
  end

  def server_user_icon name
    icon name, :home
  end

  def server_icon name
    icon name, :cloud
  end

  def h
    @view
  end

  def model
    __getobj__
  end
end
