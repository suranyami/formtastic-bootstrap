module FormtasticBootstrap
  module Helpers
    module InputHelper
      include Formtastic::Helpers::InputHelper
      
      def standard_input_class_name(as)
        "FormtasticBootstrap::Inputs::#{as.to_s.camelize}Input"
      end
      
      def input(method, options = {})
        options[:wrapper_html] = {} unless options[:wrapper_html]
        add_class(options[:wrapper_html], 'control-group')
        options[:input_html] = {} unless options[:input_html]
        add_class(options[:input_html], 'controls')
        super(method, options)
      end
      private
      def add_class(element, css_class)
        classes = element[:class]
        classes = [] unless classes
         if classes.is_a? String
           element[:class] = [classes]
         else
           element[:class] = classes
         end
        element[:class] << css_class
      end
    end
  end
end
