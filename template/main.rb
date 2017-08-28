require './html_report.rb'

text = [
    'This is my test report.',
    'It is really fancy.',
    'Look at me go!'
]

report = HTMLReport.new("My Test Report", text)

puts report.as_string
puts report.as_file('report.html')
