module Handlers
  class CreateProduct
    include Import['database']

    def handle(params)
      id = database[:products].insert(name: params[:name],
                                      price: params[:price])
      { id: id }
    end
  end
end
