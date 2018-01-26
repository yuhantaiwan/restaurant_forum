class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # 把 authenticate_admin 這個方法定義在一個所有 Controller 都可以取用的地方
  private
    def authenticate_admin
      # unless 會條件式回傳 False 時，才會去執行 block 裡的程式碼。
      # current_user 拿到 User instance，接著呼叫一個叫 admin? 的 instance method。
      unless current_user.admin?
        flash[:alert] = "Not allow!"
        redirect_to root_path
      end
    end
end
