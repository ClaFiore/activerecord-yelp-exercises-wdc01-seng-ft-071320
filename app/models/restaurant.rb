class Restaurant < ActiveRecord::Base
    has_many :dishes

    def self.sweet_dragon
        Restaurant.find_by(name: "Sweet Dragon")
    end

    def self.tenth
        Restaurant.limit(10).last
    end

    def self.with_long_names
        Restaurant.find(name.length > 12)
    end
end