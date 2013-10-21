module PrawnSpread
  
  module ActionController

    def prawn_spread(options)
      prawn_spread_options.merge! options
    end
    
    private
    
    def prawn_spread_options
      @prawn_spread_options ||= {}
      [:prawn, :spreadsheet].each {|format| @prawn_spread_options[format] ||= {}}
      @prawn_spread_options
    end

  end
  
end