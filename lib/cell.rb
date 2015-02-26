class Cell
  attr_reader :content

  def initialize(content)
    @content = content
    @status
  end

  def hit?(_content)
    @status
  end

  def hit!(content)
    content.hit
    @status = true
  end
end
