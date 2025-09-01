module Handlers
  class GetProduct
    include Import['database']

    def handle(params)
      database[:products].where(id: params[:id]).first
    end
  end
end
