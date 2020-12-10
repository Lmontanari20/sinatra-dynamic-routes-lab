require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params["name"].reverse
  end

  get '/square/:number' do 
    n1 = params["number"].to_i
    answer = n1 * n1
    answer.to_s
  end

  get '/say/:number/:phrase' do
     num = params["number"].to_i
     answer = ""
     num.times do 
      answer += params["phrase"]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params["word1"]} #{params["word2"]} #{params["word3"]} #{params["word4"]} #{params["word5"]}."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params["operation"]
    n = params["number1"].to_i
    n2 = params["number2"].to_i
    answer = 0
    case operation
    when "add"
      answer = n + n2
    when "subtract"
      answer = n - n2
    when "multiply"
      answer = n * n2
    when "divide"
      answer = n/n2
    end
    answer.to_s
  end

end