module Strategy
  class Report
    attr_accessor :formatter

    def initialize(formatter)
      self.formatter = formatter
    end

    def output_report(title, text)
      formatter.output_report(title, text)
    end
  end
end