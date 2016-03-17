class ContactsController < ApplicationController
  def index  
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render 'new.html.erb'  
  end
  
  def create
    Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    redirect_to '/contacts'
  end 

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render 'show.html.erb'
  end  

  def edit
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    Contact.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    render 'edit.html.erb'
  end
end 

