module PrawnSpread
  
  module PDF
   
    class Document < Prawn::Document

      def initialize(opts,&block)
        @template_file   = opts[:template]
        @template_repeat = opts[:repeat_template]
        super
      end

      def start_new_page(options={})
        opts = @template_repeat ? options.reverse_merge({:template => @template_file}) : options
        super(opts)
      end
      
    end
  
  end
  
end