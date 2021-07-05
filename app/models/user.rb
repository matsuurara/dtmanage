class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


        with_options presence: true do
          validates :nickname
          validates :password,
                    format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ }
          with_options format: { with: /\A[ぁ-んァ-ン一-龥]/ } do
            validates :last_name
            validates :first_name
          end
          validates :birthday
        end

end
