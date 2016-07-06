require 'json'

app = -> (env) do
  request = Rack::Request.new(env)
  sleep request.params['sleep'].to_i
  [200, {'Content-Type' => 'application/json'}, [{v: ENV['version'], date: Time.now}.to_json + "\n"]]
end

run app
