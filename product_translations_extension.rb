# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ProductTranslationsExtension < Spree::Extension
  version "1.0"
  description "Makes product details, properties, prototypes, option types, option values and taxonomies translatable using the Globalize 2 plugin"
  
  def activate
    # add content translations using Globalize 2's helpers
    
    Product.class_eval do
      translates :name, :description, :meta_description, :meta_keywords
    end
    
    Property.class_eval do
      translates :presentation
    end

    Prototype.class_eval do
      translates :name
    end
    
    Taxonomy.class_eval do
      translates :name
    end
    
    Taxon.class_eval do
      translates :name
    end
    
    OptionType.class_eval do
      translates :presentation
    end
    
    OptionValue.class_eval do
      translates :presentation
    end    
  end
end
