
class Application
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end

# require_relative './spec_helper'

# describe "App" do

#   it 'wishes user a good morning in the morning' do
#     allow(Time).to receive(:now){
#       Time.new(2015,11,27,9,30)
#     }
#     get '/'
#     expect(last_response.body).to include("Morning")
#   end

#   it 'wishes user a good afternoon in the afternoon' do
#     allow(Time).to receive(:now){
#       Time.new(2015,11,27,14,30)
#     }
#     get '/'
#     expect(last_response.body).to include("Afternoon")
#   end
# end
