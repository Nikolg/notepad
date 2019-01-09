class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end

  def save
    File.write(file_path, to_strings, encoding: "UTF-8")
  end

  def file_path
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt"))
    __dir__ + "/" + file_name
  end
end

# File.write("#{__dir__}/#{file_name}", to_strings, encoding: "UTF-8")