namespace :fake_data do
  desc "Generate fake comments and associate them with users"
  task generate_comments: :environment do
    User.all.each do |user|
      comment_content = Faker::Lorem.sentence
      
      Comment.create(content: comment_content, user_id: user.id)
      
      puts "Created comment '#{comment_content}' for user #{user.id}"
    end
  end
end
