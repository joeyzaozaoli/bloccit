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

puts "number of posts #{Post.count}"
x = Post.find_or_create_by(title: "Hello World", body: "I am halfway through backend.")
puts "number of posts #{Post.count}"

puts "number of comments #{Comment.count}"
y = Comment.find_or_create_by(post:x, body: "Watched the therapy of rejection.")
puts "number of comments #{Comment.count}"
puts "#{y.post.title} - This indicates successful linkage post and comment."

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
