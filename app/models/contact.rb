class Contact < ActiveRecord::Base
  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
  end
end 


