require './report.rb'
require './plain_text_formatter.rb'
require './html_formatter.rb'

text = ['Report line 1', 'Report line 2',  'Report line 3']
title = 'Super Cool Report'

report = Strategy::Report.new(PlainTextFormatter.new)
report.output_report(title, text)

report.formatter = HTMLFormatter.new
report.output_report(title, text)