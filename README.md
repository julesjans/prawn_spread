Provides simple PDF & Spreadsheet view templating capabilities for rails, using [prawnpdf/prawn](https://github.com/prawnpdf/prawn) & [zdavatz/spreadsheet](https://github.com/zdavatz/spreadsheet). Largely inspired by [prior/prawnto](https://github.com/prior/prawnto) & [railscasts #379](http://railscasts.com/episodes/379-template-handlers).

For quickly integrating reports into rails views.

Works in rails 2.3.x, 3.2.x & 4.0.


###Installation

This gem is not distributed built. Either clone & build, or use bundler:

```ruby	
gem 'prawn_spread', :git => 'https://github.com/julesjans/prawn_spread.git'
```

###Usage

Create a view (either *.pdf.prawn* or *.xls.spreadsheet*), and code away with *[prawn](https://github.com/prawnpdf/prawn)* or *[spreadsheet](https://github.com/zdavatz/spreadsheet)*:

```ruby	
# my_report.pdf.prawn
pdf.text "My empty report"
```

```ruby	
# my_report.xls.spreadsheet
sheet = xls.create_worksheet :name => 'My Worksheet'
sheet[0,0] = "My Cell"
```

The report template can be configured in the controller, at the most basic the filename and content-disposition can be set (inline/attachment - defaults to attachment):

```ruby	
prawn_spread :filename => 'my_report.pdf', :inline => true
```

Also *[prawn](https://github.com/prawnpdf/prawn)* can be configured (*[spreadsheet](https://github.com/zdavatz/spreadsheet)* to come):

```ruby	
prawn_spread :prawn => {:top_margin => 20}, :filename => 'my_report.pdf'
```

Additionally a PDF template can be set to be automatically repeated on every page (great for reports):

```ruby	
prawn_spread :prawn => {:template => "headed_paper.pdf", :repeat_template => true}, :filename => 'headed_report.pdf'
```

An optional block can be passed to prawn_spread as a completion handler, it will be executed after the view has been rendered (PDF only at the moment):

```ruby	
prawn_spread(:filename => 'my_report.pdf', :inline => true) {File.delete(tmp_file)}
```

---

###On the way...

1. Tests, none as yet...

2. Inline spreadsheets (obviously not inline)...?

3. Completion handler for .xls