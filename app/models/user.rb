class User < ActiveRecord::Base

  has_secure_password


  # Возвращает дайджест данной строки
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  validates :password, presence: true, length: { minimum: 3 }

end
