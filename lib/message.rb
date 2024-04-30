class Message
  def public_message
    p 'A public message'
  end

  def some_message
    p "#{private_message} Hola"
  end

  private

  def private_message
    p 'A private message'
  end

  protected

  def protected_message
    p 'A protected message'
  end
end

class MySub < Message
  def my_sub_message
    private_message
  end

  def called_protected(message_obj)
    message_obj.protected_message
  end

  def some_message
    p 'def some_message from MySub'
  end
end

class User
  attr_accessor :name, :age
end

msg = Message.new
# msg.public_message
msg.some_message
# msg.protected_message
mys = MySub.new
# mys.my_sub_message
# mys.called_protected(msg)
mys.some_message

user = User.new
user.name = 'Lalo'
user.age = 44
puts user.name, user.age
