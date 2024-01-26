# frozen_string_literal: true

module MomoPay
  class OneTimePaymentSignature < Signature

    def initialize(data, keys)
      data.merge!({
        accessKey: MomoPay.setup.access_key,
      })
      @query_string = MomoPay::QueryString.new(data).to_s(keys)
    end

    def to_s
      OpenSSL::HMAC.hexdigest("SHA256", MomoPay.setup.secret_key, query_string)
    end

    private

    attr_reader :query_string

  end
end

