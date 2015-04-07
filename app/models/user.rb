class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  validates_uniqueness_of :email, :case_sensitive => false, :allow_blank => true, :if => :email_changed?

  def is_admin?
    admin if true
  end

end
