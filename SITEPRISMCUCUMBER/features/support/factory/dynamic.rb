require 'faker'

module Factory
    class Dynamic
        def self.message_for_contact
            {
                email: Faker::Internet.email,
                menssage: Faker::Lorem.paragraph,
            }
        end
    end
end