module Handlers
  class GetProduct
    def handle(params)
      {
        id: params[:id],
        name: 'some name',
        price: 12.12
      }
    end
  end
end
