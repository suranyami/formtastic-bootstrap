module FormtasticBootstrap
  module Helpers
    module HamlHelper
      def capture_block(&block)
        if template.respond_to?(:is_haml?) && template.is_haml?
          template.capture_haml(&block)
        else
          template.capture(&block)
        end
        
    end
  end
end