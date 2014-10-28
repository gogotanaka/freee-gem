module Freee
  class Item < Freee::Base
    class << self
      def create
        Freee.client.post('/api/1/items', :item, **kwargs)
      end

      def list(company_id)
        Freee.client.get(
          "/api/1/items?company_id=#{company_id.to_i}",
          :item
        )
      end
    end
  end
end
