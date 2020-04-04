class Todo < ApplicationRecord
    # model association
    has_many :items, dependent: :destroy

   validates_presence_of :title, :created_by
end
