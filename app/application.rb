class Application

    @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            item_path = req.path.split("/items/").last
            if item = @@items.find{|i| i.name == item_path}
                resp.write item.price
            else
                resp.status = 400
                resp.write "Item not found"
            end
        end

    end

end