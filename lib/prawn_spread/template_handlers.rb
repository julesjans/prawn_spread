module PrawnSpread
  
  module TemplateHandlers
  
    class Spreadsheet
      def self.call(template)
        "compile_prawn_spread_view;" + 
        "xls = Spreadsheet::Workbook.new(@prawn_spread_options[:spreadsheet]);" + 
        "#{template.source}\n" +
        # TODO: Test whether this works...
        # "@prawn_spread_completion_block.call;" +
        "data = StringIO.new; xls.write(data); data.string;"
      end
    end

    class PDF
      def self.call(template)
        "compile_prawn_spread_view;" + 
        "pdf = PrawnSpread::PDF::Document.new(@prawn_spread_options[:prawn]);" + 
        "#{template.source}\n" +
        "@prawn_spread_completion_block.call;" +
        "pdf.render;"
      end
    end
    
  end
  
end