class Robot
  attr_reader :name

  def initialize
    generate_name
  end

  def reset
    generate_name
  end

  private

  def generate_name
    @name = "#{[*'A'..'Z'].sample(2).join}#{rand(100..999)}"
  end
end