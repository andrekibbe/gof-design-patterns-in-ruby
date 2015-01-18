class Chief
  attr_reader :department
  def initialize options
    @department = options[:department]
  end

  def method_missing *args, &block
    method = args.shift.to_s
    if method.to_s.include? "department_"
      correct_method = method.to_s.gsub "department_", ""
      department.send correct_method, *args, &block
    else
      super *args, &block
    end
  end
end
