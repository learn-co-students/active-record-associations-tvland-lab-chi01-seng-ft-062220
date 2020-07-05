class CreateActors < ActiveRecord::Migration[5.1]
    def change
        create_table :actors do |c|
            c.string :first_name
            c.string :last_name
        end
    end
end
