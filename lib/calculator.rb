
class Calculator

  def initialize

  end

  def Add arg="0"

    arg.gsub! '\n', ','
    args = arg.split(",")

    sum = 0

    args.each { |x| sum += x.to_i()}

    sum
  end

  def to_s
    true
  end

end