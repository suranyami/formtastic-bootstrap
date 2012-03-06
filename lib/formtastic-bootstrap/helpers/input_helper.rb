module FormtasticBootstrap
  module Helpers
    module InputHelper
      include Formtastic::Helpers::InputHelper
      
      def standard_input_class_name(as)
        "FormtasticBootstrap::Inputs::#{as.to_s.camelize}Input"
      end
      
      def input(method, options = {})
        options[:wrapper_html] ||= {}
        options[:wrapper_html][:class] ||= []
        options[:wrapper_html][:class] << 'control-group'
        options[:inner_html][:class] << 'controls'
      end
    end
      
  end
end
