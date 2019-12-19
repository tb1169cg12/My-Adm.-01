require_relative 'crud'
class Student
    include Crud
    #if we are writing this ..then we dont need the below functions ..this will allow the getter and setter functionality
    attr_accessor :first_name, :last_name, :email, :username, :password
 
    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password =password
    end
    
    def to_s
       "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}" 
    end
end

gitesh = Student.new("Gitesh", "Wadhwa", "gitesh1", "gitesh@example.com", "password1")

moksh = Student.new("Moksh", "Moksh", "moksh1", "moksh@example.com","password2")

#puts gitesh
hashed_password = gitesh.create_hash_digest(gitesh.password)
puts hashed_password