class Wechat::JSAPI::Signature

  # 生成JS-SDK权限验证的签名
  # http://mp.weixin.qq.com/wiki/11/74ad127cc054f6b80759c40f77ec03db.html#.E9.99.84.E5.BD.951-JS-SDK.E4.BD.BF.E7.94.A8.E6.9D.83.E9.99.90.E7.AD.BE.E5.90.8D.E7.AE.97.E6.B3.95
  def self.create(link, ticket, timestamp, nonce)
    raise ArgumentError.new('The link parameter is required.') if link.blank?
    Digest::SHA1.hexdigest [ "url=#{link}", "jsapi_ticket=#{ticket}", "timestamp=#{timestamp}", "noncestr=#{nonce}" ].sort.join('&')
  end

end
