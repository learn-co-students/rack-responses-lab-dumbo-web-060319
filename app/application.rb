
class Application

    def call(env)
        resp = Rack::Response.new 
        now = Time.now 
        now = now.to_a
        if now[2] > 12 
            resp.write "Good Afternoon"
        else 
            resp.write "Good Morning"
        end
        resp.finish 
    end

end