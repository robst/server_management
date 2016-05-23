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

  def h
    @view
  end

  def model
    __getobj__
  end
end
