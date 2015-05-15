class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  validates :username, presence: true
  validates :email, presence: true

  validates_uniqueness_of :email, :case_sensitive => false, :allow_blank => true, :if => :email_changed?

  def is_admin?
    admin if true
  end

end
