class CreateNumbers
  include Interactor

  def call
    context.numbers = create_number(group)
  end

  def create_number(group)
    number_of_digits = group.digits
    from_num, to_num = check_number_of_digits(number_of_digits)
    total_numbers = group.total
    numbers = []
    total_numbers.times do
      number = Number.create(
        amount: rand(from_num..to_num),
        group_id: group.id
      )

      if number.save
        numbers << number
      else
        context.fail!(error: 'Failed when creating new number!')
      end
    end
    numbers
  end

  def check_number_of_digits(number_of_digits)
    case number_of_digits
    when 1
      [
        from_num = -9,
        to_num = 9
      ]
    when 2
      [
        from_num = -99,
        to_num = 99
      ]
    when 3
      [
        from_num = -999,
        to_num = 999
      ]
    end
  end 


  def group
    context.group
  end

  def params
    context.params
  end

end