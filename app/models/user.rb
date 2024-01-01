# class User < ApplicationRecord
#   # Other Devise modules...

#   # Configure Devise for JWT and include the revocation strategy
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable,
#          :jwt_authenticatable, jwt_revocation_strategy: Devise::JWT::RevocationStrategies::JTIMatcher
# end
# class User < ApplicationRecord
#   include Devise::JWT::RevocationStrategies::JTIMatcher
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
# end



#FUNCIONA
# class User < ApplicationRecord
#   include Devise::JWT::RevocationStrategies::JTIMatcher
#   devise :database_authenticatable, :registerable,
#          :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
# end



class User < ApplicationRecord
  # ...
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :jwt_authenticatable, jwt_revocation_strategy: self
  # ...
end