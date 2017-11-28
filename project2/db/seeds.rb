# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all
User.destroy_all


jake = User.create(email: 'email@jake.com', password: 'password')
jakes_post = Post.create(user: jake, title: "jakes test title", content: "jakes test content")

test_post1 = Post.create(user: jake, title: "Test Title 1", content: "Test Content1")
test_post2 = Post.create(user: jake, title: "Test2", content: "test content2")

test_comment1 = test_post1.comments.create(user: jake, comment_content: "jakes content")
# Comment.create([{user: jake, comment_content: "test", post_id: "test comment ID"}])
