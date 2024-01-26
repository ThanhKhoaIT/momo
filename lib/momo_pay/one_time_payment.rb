module MomoPay
  class OneTimePayment

    def self.request(data)
      data.merge!({
        requestType: 'captureWallet',
        accessKey: MomoPay.setup.access_key,
        partnerCode: MomoPay.setup.partner_code,
        partnerName: MomoPay.setup.partner_name,
      })
      signature = MomoPay::Signature.new(data, MomoPay.setup.signature_one_time_payment_keys).to_s
      data.merge!(signature: signature)

      MomoPay::Request.post('/v2/gateway/api/create', data)
    end

  end
end
