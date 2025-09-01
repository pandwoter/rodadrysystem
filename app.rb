class App < Roda
  plugin :json

  include Import[get: 'handlers.get_product',
                 create: 'handlers.create_product']

  route do |r|
    r.on 'products' do
      r.is Integer do |id|
        r.get do
          get.handle(id: id)
        end
      end

      r.post do
        create.handle(name: r.params['name'], price: r.params['price'])
      end
    end
  end
end
