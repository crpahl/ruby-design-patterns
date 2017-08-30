class Report
  attr_accessor :title, :text, :report

  def initialize(title, text)
    @title = title
    @text = text
    @report = ''
  end

  public

  def as_string
    puts self.output_report
  end

  def as_file(file_location)
    File.open(file_location, 'w') do |file|
      file.puts self.output_report
    end
  end

  protected

  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_body
    text.each do |line|
      output_line(line)
    end
  end

  def output_line(line)
    raise NotImplementedError, 'Called abstract method: output_line'
  end

  def output_start
  end

  def output_head
    raise NotImplementedError, 'Called abstract method: output_head'
  end

  def output_body_start
  end

  def output_body_end
  end

  def output_end
  end


end