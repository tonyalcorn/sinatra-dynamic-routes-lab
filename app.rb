require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    response = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # binding.pry
    @number.times { 
      response << @phrase
    }
    response
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    response = ""
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      result = @number1 + @number2
    elsif @operation == "subtract"
      result = @number1 - @number2
    elsif @operation == "multiply"
      result = @number1 * @number2
    elsif @operation == "divide"
      result = @number1 / @number2
    end
    result.to_s
  end


end