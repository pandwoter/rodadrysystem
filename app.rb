class App < Roda
  plugin :json
  plugin :common_logger, System['logger']

  route do |r|
    r.on 'products' do
      r.is Integer do |id|
        r.get do
          System['handlers.get_product'].handle({ id: id })
        end
      end
    end
  end
end
