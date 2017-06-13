require 'random_data'


50.times do

  Post.create!(

    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all


100.times do
  Comment.create!(

    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

<Post id: 101, title: "The unique title", body: "The unique body", created_at: "2017-06-13 19:22:01", updated_at: "2017-06-13 19:22:01">
<Comment id: 301, body: "The unique body for comment", post_id: 101, created_at: "2017-06-13 19:35:22", updated_at: "2017-06-13 19:35:22"> 

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
