class Admin::RestaurantsController < ApplicationController
  # 如果驗證權限通過，Controller 就會讀取程式碼去找到對應的的 Model 與 View。如果驗證不通過，就設定跳轉到其他地方，不讓使用者看見內容。
  # 我們要先確保使用者有登入，才能拿到 User instance，進而去驗證 instance 身上攜帶的 role 屬性，是否帶有 "admin" 的值。
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @restaurants = Restaurant.all  # 用 Restaurant.all 撈出所有的餐廳資料並存入 @restaurants 這個實例變數
  end
end
