module MomoPay
  class Default

    SIGNATURE_MOBILE_VERIFY_KEYS = [
      'status',
      'message',
      'amount',
      'transid',
    ]

    SIGNATURE_IPN_VERIFY_KEYS = [
      'partnerCode',
      'accessKey',
      'requestId',
      'amount',
      'orderId',
      'orderInfo',
      'orderType',
      'transId',
      'message',
      'localMessage',
      'responseTime',
      'errorCode',
      'payType',
      'extraData',
    ]

    SIGNATURE_CONFIRM_KEYS = [
      'partnerCode',
      'partnerRefId',
      'requestType',
      'requestId',
      'momoTransId',
    ]

    SIGNATURE_QR_CODE_KEYS = [
      'partnerCode',
      'accessKey',
      'requestId',
      'amount',
      'orderId',
      'orderInfo',
      'returnUrl',
      'notifyUrl',
      'extraData',
    ]

    SIGNATURE_ONE_TIME_PAYMENT_VERIFY_KEYS = [
      'accessKey',
      'amount',
      'extraData',
      'message',
      'orderId',
      'orderInfo',
      'orderType',
      'partnerCode',
      'payType',
      'requestId',
      'responseTime',
      'resultCode',
      'transId'
    ]

    SIGNATURE_ONE_TIME_PAYMENT_KEYS = [
      'accessKey',
      'amount',
      'extraData',
      'ipnUrl',
      'orderId',
      'orderInfo',
      'partnerCode',
      'redirectUrl',
      'requestId',
      'requestType'
    ]
  end
end
