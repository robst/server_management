module Human
  extend ActiveSupport::Concern
  included do
    def self.pluralize
      model_name.human(count: 2)
    end

    def self.singularize
      model_name.human
    end
  end
end
