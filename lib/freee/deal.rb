module Freee
  class Deal < Freee::Base
    class << self
      def create
        Freeee.client.post('/api/1/deals', :deals, **kwargs)
      end

      def list(company_id, **kwargs)
        params = Freee.encode_params(kwargs)
        Freee.client.get(
          "/api/1/deals?company_id=#{company_id.to_i}#{params}",
          :deal
        )
      end

      def list_income(company_id, **kwargs)
        kwargs[:type] = 'income'
        self.list(company_id, **kwargs)
      end

      def list_expense(company_id, **kwargs)
        kwargs[:type] = 'expense'
        self.list(company_id, **kwargs)
      end
    end
  end
end
