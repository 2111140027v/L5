class Like < ApplicationRecord
    belogs_to :user
    belogs_to :tweet
end