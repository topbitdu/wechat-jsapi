require 'jsonclient'

class Wechat::JSAPI::Ticket

  extend ::Wechat::Core::Common

  # 获得jsapi_ticket
  # http://mp.weixin.qq.com/wiki/11/74ad127cc054f6b80759c40f77ec03db.html#.E9.99.84.E5.BD.951-JS-SDK.E4.BD.BF.E7.94.A8.E6.9D.83.E9.99.90.E7.AD.BE.E5.90.8D.E7.AE.97.E6.B3.95
  #
  # Return hash format if success:
  # {
  #   errcode:    0,
  #   errmsg:     'ok',
  #   ticket:     <JSAPI_TICKET>,
  #   expires_in: 7200
  # }
  def self.create(access_token)

    raise ArgumentError.new('The access_token argument is required.') if access_token.blank?

    message = ::JSONClient.new.get "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=#{access_token}&type=jsapi"
    message.body

  end

end
