class Application 

    def call(env)
        resp = Rack::Response.new

        #ruby's built in 'Time' class, which includes built in .hour method
        time = Time.now

        if time.hour >= 12 
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

        resp.finish

    end




end