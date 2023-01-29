class Post < ApplicationRecord
    validates :title, presence: :true, length: {minimum:5, maximum:40}
    validates :body, presence: :true, length: {minimum:10, maximum:700}

end

10.times do |x| 
    Post.create(title:"Title #{x}", body: "Body #{x} words go here Idk")
end