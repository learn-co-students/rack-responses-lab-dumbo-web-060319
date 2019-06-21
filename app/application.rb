class Application

	def call(env)
		resp = Rack::Response.new
		h = Time.now.hour
		if h <= 12
			resp.write "Good Morning!"
		else
			resp.write "Good Afternoon!"
		end
		resp.finish
	end
end
