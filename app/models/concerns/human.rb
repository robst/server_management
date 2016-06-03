module Human
  extend ActiveSupport::Concern
  included do
    def self.pluralize
      model_name.human(count: 2)
    end

    def self.singularize
      model_name.human
    end

    def self.humanize attribute
      human_attribute_name attribute
    end
  end
end
