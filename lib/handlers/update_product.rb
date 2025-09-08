module Handlers
  class UpdateProduct
    include Import['database']

    def handle(params)
      database[:products]
        .where(id: params[:id])
        .update(name: params[:name], price: params[:price])
    end
  end
end
