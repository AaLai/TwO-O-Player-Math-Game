class Question
  attr_reader :first_num, :second_num, :symbol

  def initialize(name)
    @player_name = name
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @symbol = ['+', '-', '*', '/'].sample
  end

  def make_question
    "What is #{@first_num} #{@symbol} #{second_num} ?
    #{@player_name} > "
  end

  def answer_check
    case @symbol
      when '+'
        @first_num + @second_num
      when '-'
        @first_num - @second_num
      when '*'
        @first_num * @second_num
      when '/'
        @first_num / @second_num
    end
  end

  def ask_question
    print make_question
    answer = gets.chomp.to_i
    return answer == answer_check ? true : false
  end

end
