class App < Roda
  plugin :json

  route do |r|
    r.on 'products' do
      r.post do
        System['handlers.create_product'].handle({ name: r.params['name'], 
                                                   price: r.params['price'] })
      end

      r.is Integer do |id|
        r.get do
          System['handlers.get_product'].handle({ id: id })
        end
      end
    end
  end
end
