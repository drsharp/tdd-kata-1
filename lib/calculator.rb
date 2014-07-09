
class Calculator

  def add(arg='0')
    arg.gsub!('\n', ',')
    args = arg.split(",")
    args.map(&:to_i).reduce(0,:+)
  end

end
