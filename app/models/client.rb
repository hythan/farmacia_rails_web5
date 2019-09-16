class Client < ApplicationRecord

    validates_presence_of :gender
    validates_presence_of :weight

end
