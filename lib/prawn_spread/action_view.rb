module PrawnSpread

  module ActionView

    private

    def compile_prawn_spread_view
      @prawn_spread_options ||= controller.send(:prawn_spread_options)
      inline    = @prawn_spread_options[:inline] ? 'inline' : 'attachment'
      filename  = @prawn_spread_options[:filename] ? "filename=#{@prawn_spread_options[:filename]}" : nil
      controller.headers["Content-Disposition"] = [inline,filename].compact.join(';')
    end

  end
  
end