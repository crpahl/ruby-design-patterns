class Report
  atrr_accessor :title, :text
  def initialize(title, text)
    @title = title
    @text = text
  end

  def output_report
    self.output_start
    self.output_head
    self.output_body_start
    self.output_body
    self.output_body_end
    self.output_end
  end

  def output_body
    self.text.each do |line|
      self.output_line(line)
    end
  end

  def output_line(line)
    raise NotImplementedError, 'Called abstract method: output_line'
  end

  def output_start
    raise NotImplementedError, 'Called abstract method: output_start'
  end

  def output_head
    raise NotImplementedError, 'Called abstract method: output_head'
  end

  def output_body_start
    raise NotImplementedError, 'Called abstract method: output_body_start'
  end

  def output_body_end
    raise NotImplementedError, 'Called abstract method: output_body_end'
  end

  def output_end
    raise NotImplementedError, 'Called abstract method: output_end'
  end
end