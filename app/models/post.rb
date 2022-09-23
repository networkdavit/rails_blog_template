class Post < ApplicationRecord
    def to_param  # overridden
        title
    end
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :body, presence: true, length: {minimum: 10, maximum: 1000}
end
