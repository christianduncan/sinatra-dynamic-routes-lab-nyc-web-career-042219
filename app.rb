require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number*@number
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    "#{@phrase*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    sentence = "#{@word1+" "+@word2+" "+@word3+" "+@word4+" "+@word5}."
    "#{sentence}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
      case @operation
      when "add"
        "#{@number1 + @number2}"
      when "subtract"
        "#{@number1 - @number2}"
      when "multiply"
        "#{@number1 * @number2}"
      when "divide"
        "#{@number1 / @number2}"
      end
  end

end
