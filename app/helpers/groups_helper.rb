module GroupsHelper
  def set_operation(group)
    case group.operation
    when 0
      "сложение или вычитание"
    when 1
      "умножение"
    when 2
      "деление"
    end
  end
end
