class Transaction < ApplicationRecord
    belongs_to :user

    has_many :item_boughts
end
