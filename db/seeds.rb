# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Rails Blog

# Create one and test db:seed.
10.times do 
  Comment.create!(commenter: User.find_by(id = 4).first_name + " " + User.find_by(id = 4).last_name, 
                body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, neque id finibus dignissim, nisl nisl euismod lectus, vestibulum mattis est sapien sit amet massa. Suspendisse dignissim dapibus orci, a vulputate libero porttitor non. Sed hendrerit felis enim, non vehicula dolor tincidunt id. Donec et dapibus neque. Mauris vel vehicula ex. Integer a dignissim arcu, vitae sagittis enim. Vivamus quis porttitor est, eget ultricies tortor. Nullam porttitor enim quis ante pharetra commodo. Fusce luctus mauris sit amet orci placerat tincidunt. Sed tortor risus, eleifend vel commodo vel, semper quis lacus. Phasellus quis massa a purus fringilla feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse nec auctor urna, non luctus dolor. Mauris pellentesque sem ligula, vel varius diam imperdiet ac. Fusce placerat pharetra dolor.",
                rating: 4,
                user_id: 4,
                article_id: 14,
                reviewed: false,
                approved: false)
end

