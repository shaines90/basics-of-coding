class Url < ActiveRecord::Base
  before_save :check_url_http

  def check_url_http
    self.originial = 'http://' + self.originial
  end
end
