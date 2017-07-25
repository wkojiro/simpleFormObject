class RegistrationForm
  include ActiveModel::Model
  attr_accessor :name

  validates :name, presence: true

  def save
      
      setup_user

  end 
  
  private
  
   def setup_user
      user = User.create!(name: name)
   end
      
end