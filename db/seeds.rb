require 'random_data'

15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
  )
end
topics = Topic.all

50.times do
  Post.create!(
    topic: topics.sample,
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
post1 = Post.find_or_create_by!(
  title:"Test Title 1",
  body:"Test Body 1",
  topic: Topic.new(name: "hello", description: "hello1", public: true)
)

puts "#{Post.count}"

puts "#{Comment.count}"
Comment.find_or_create_by!(
  post: post1,
  body:"Test Body Unique 2"
)
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"