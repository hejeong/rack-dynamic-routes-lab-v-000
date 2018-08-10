class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
        item_name = req.path.split("/items/").last
        found_item = @@items.find{|element| element.name == item_name}
        if found_item == nil
          resp.write "We don't have this item"
          resp.status = 400
        else


        end 
    else
        resp.status = 404
    end
  end
end
