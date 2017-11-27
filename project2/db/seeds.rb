# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all



test_post1 = Post.create([{title: "Test Title 1", content: "Test Content1"}])
test_post2 = Post.create([{title: "Test2", content: "test content2"}])


Comment.create([{comment_content: "test", post_id: "test comment ID"}])
