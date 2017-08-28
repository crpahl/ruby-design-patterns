require './report.rb'

class HTMLReport < Report
  def output_line(line)
    self.report << "<p>#{line}</p>"
  end

  def output_start
    self.report += '<html>'
  end

  def output_head
    self.report << '<head>'
    self.report << "<title>#{self.title}</title>"
    self.report << '</head>'
  end

  def output_body_start
    self.report << '<body>'
  end

  def output_body_end
    self.report << '</body>'
  end

  def output_end
    self.report << '</html>'
  end
end