class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  devise :omniauthable

 has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "400x400" }

 validates_attachment :image, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, size: { in: 0..10.megabytes }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
         user.provider = auth.provider
         user.uid = auth.uid
         user.email = auth.info.email
         user.name = auth.info.first_name
         user.password = Devise.friendly_token[0,20]
         user.first_name = auth.info.first_name
         user.last_name = auth.info.last_name
         user.portfolio = auth.public_profile_url
       end
     end
end
