class Url < ApplicationRecord
    # validates :long_url, format: { with: /https?:\/\/[\S]+/ }
    validates_format_of :long_url, with: /https?:\/\/[\S]+/, on: :create
end
