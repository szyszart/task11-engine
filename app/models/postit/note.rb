module Postit
    class Note < ::ActiveRecord::Base
        validates_presence_of :content, :author
    end
end

