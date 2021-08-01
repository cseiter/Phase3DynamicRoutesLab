class Application

    @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

    def call(env)
        resp = Rack::response.new
        req = Rack::Request.new(env)

    end

end