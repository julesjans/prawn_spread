require 'prawn'
require 'spreadsheet'

require "action_controller"
require "action_view"

require 'prawn_spread/pdf'
require "prawn_spread/action_controller"
require "prawn_spread/action_view"
require "prawn_spread/template_handlers"

class ActionController::Base
  include PrawnSpread::ActionController
end

class ActionView::Base
  include PrawnSpread::ActionView
end

Mime::Type.register "application/pdf", :pdf unless defined? Mime::PDF
ActionView::Template.register_template_handler 'prawn', PrawnSpread::TemplateHandlers::PDF 

Mime::Type.register "application/vnd.ms-excel", :xls unless defined? Mime::XLS
ActionView::Template.register_template_handler 'spreadsheet', PrawnSpread::TemplateHandlers::Spreadsheet 