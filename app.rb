require_relative 'config/environment'

class App < Sinatra::Base
  
  # get '/reversename/:name' do 
  #   reversed = []
  #   string_split = params[:name].split("") 
  #   string_split.length.times {|letter| reversed << letter.pop} 
  #   reversed.join
  # end
  
  get '/reversename/:name' do
    params[:name].reverse
  end
 
  get '/square/:number' do
    (params[:number].to_i ** 2).to_s 
  end

  
  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end
  end
  
end