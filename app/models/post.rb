class Post < ApplicationRecord
    has_rich_text :body
    def to_param  # overridden
        title
    end
    validates :title, presence: true, length: {minimum: 5, maximum: 50}
    validates :body, presence: true, length: {minimum: 10, maximum: 15000}
end
