require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all

100.times do 
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{Post.count}"
Post.find_or_create_by!(
  title:"Test Title 1",
  body:"Test Body 1"
)
post1 = Post.all
puts "#{Post.count}"


puts "#{Comment.count}"
Comment.find_or_create_by!(
  post: post1,
  body:"Test Body Unique 2"
)
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"