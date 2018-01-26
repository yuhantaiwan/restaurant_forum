class RestaurantsController < ApplicationController
  # 在每個 Controller Action 開始之前，進行把關。
  # 當使用者透過網址進入你的網站時，這個方法會檢查從 Route 送進來的 Request，是否來自一個已經登入的使用者。
  before_action :authenticate_user!

  def index
  end
end
