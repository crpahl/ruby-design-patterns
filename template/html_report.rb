require './report.rb'

class HTMLReport < Report
  def output_line(line)
    report << "<p>#{line}</p>"
  end

  def output_start
    report << '<html>'
  end

  def output_head
    report << '<head>'
    report << "<title>#{title}</title>"
    report << '</head>'
  end

  def output_body_start
    report << '<body>'
  end

  def output_body_end
    report << '</body>'
  end

  def output_end
    report << '</html>'
  end
end