# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Rails Blog

# USERS

Admin = 
  User.create!( first_name:  "Admin ",
                last_name:  "Mans",
                email: "jasonmansdev@gmail.com",
                password:              "Woixufgekfi5",
                password_confirmation: "Woixufgekfi5",
                author: false,
                moderator: false,
                editor: false,
                admin: true)

Editor = 
  User.create!( first_name:  "Editor ",
                last_name:  "User",
                email: "editor@example.com",
                password:              "password",
                password_confirmation: "password",
                author: false,
                moderator: false,
                editor: true,
                admin: false)

Moderator = 
  User.create!( first_name:  "Moderator ",
                last_name:  "User",
                email: "moderator@example.com",
                password:              "password",
                password_confirmation: "password",
                author: false,
                moderator: true,
                editor: false,
                admin: false)

Author1 = 
  User.create!( first_name:  "Author1 ",
                last_name:  "User",
                email: "Author1@example.com",
                password:              "password",
                password_confirmation: "password",
                author: true,
                moderator: false,
                editor: false,
                admin: false)  

Author2 = 
  User.create!( first_name:  "Author2 ",
                last_name:  "User",
                email: "Author2@example.com",
                password:              "password",
                password_confirmation: "password",
                author: true,
                moderator: false,
                editor: false,
                admin: false)  

# Normal User
(1..5).each do | n |
  User.create!( first_name:  "User#{n}",
                last_name:  "Surname#{n}",
                email: "User#{n}@example.com",
                password:              "password",
                password_confirmation: "password",
                author: false,
                moderator: false,
                editor: false,
                admin: false)  
end  

# ARTICLES
image_url_list = ["bike_black.jpg", "bike_blue.jpg", "bike_green.jpg", "bike_white.jpg", "bike_white2.jpg"]

# 2 authors article for each picture
# Change name of title

image_url_list.each_with_index do |url_list, index| 
    Article.create!(title: "Article No. #{index + 1} ",
                    description: "#{"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."}",
                    image_url: url_list,
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, neque id finibus dignissim, nisl nisl euismod lectus, vestibulum mattis est sapien sit amet massa. Suspendisse dignissim dapibus orci, a vulputate libero porttitor non. Sed hendrerit felis enim, non vehicula dolor tincidunt id. Donec et dapibus neque. Mauris vel vehicula ex. Integer a dignissim arcu, vitae sagittis enim. Vivamus quis porttitor est, eget ultricies tortor. Nullam porttitor enim quis ante pharetra commodo. Fusce luctus mauris sit amet orci placerat tincidunt. Sed tortor risus, eleifend vel commodo vel, semper quis lacus. Phasellus quis massa a purus fringilla feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse nec auctor urna, non luctus dolor. Mauris pellentesque sem ligula, vel varius diam imperdiet ac. Fusce placerat pharetra dolor.
                           In ac varius diam. Cras volutpat dignissim nisi ac gravida. Quisque ac lacus a quam congue tincidunt at a erat. Donec convallis, nisl vel iaculis blandit, augue dui fermentum nunc, in rutrum lorem diam vel elit. Suspendisse quis est dolor. Morbi nec est in leo dictum dignissim sed et augue. Nunc eget ante vehicula, porttitor magna lobortis, tempus augue. Proin condimentum, velit eu sodales vestibulum, ante ipsum auctor lorem, vitae placerat dui erat et lectus. Integer sapien neque, fermentum non ligula non, egestas laoreet ipsum. Donec tempor feugiat nulla ut commodo.
                           Quisque sit amet magna quam. Aenean in ipsum sit amet velit egestas tristique in non magna. Aenean nec tempus nunc. Nullam tempus nulla ac luctus ornare. Quisque ac lobortis massa. Curabitur commodo imperdiet condimentum. Aliquam est dui, bibendum vitae pretium eget, fringilla scelerisque enim. Cras nec tincidunt nunc. Morbi maximus sollicitudin sapien, et lobortis enim scelerisque at. Praesent eget fringilla tellus. Etiam finibus cursus porta. Vestibulum lacinia mollis nisi, sit amet malesuada ante commodo eget.
                           Vivamus feugiat imperdiet nulla, id luctus metus consequat mollis. Cras mauris justo, volutpat a tellus ut, vestibulum lacinia eros. Suspendisse felis libero, egestas ut cursus id, tristique et justo. Cras sodales rutrum nulla, dictum aliquam arcu dictum eget. Donec sollicitudin velit vel condimentum pellentesque. Nulla ut condimentum leo. Integer pretium, mauris eget feugiat gravida, diam lectus pellentesque mauris, eget lacinia magna lorem in mauris. Etiam blandit tortor sit amet magna lobortis posuere. Nulla tempor mattis gravida. Fusce nec maximus justo.
                           Phasellus odio ipsum, pellentesque malesuada risus vel, maximus fringilla mi. Suspendisse condimentum diam a velit facilisis, id feugiat nisl tristique. Nunc elit turpis, auctor in placerat vel, pellentesque vel risus. Cras eget lacus euismod, luctus lorem nec, tincidunt dui. Quisque posuere, eros vestibulum euismod suscipit, quam justo tempus dolor, vitae commodo eros sem non purus. Sed sed gravida mauris. Cras sed nunc volutpat, auctor elit non, dignissim leo. Praesent vel rhoncus orci. Donec sit amet urna semper est elementum volutpat. Etiam rutrum pretium neque id euismod. Vestibulum eu dolor lacus.",
                    user_id: 4,
                    author: User.find_by(id: 4).first_name + " " + User.find_by(id: 4).last_name,
                    edited: false,
                    published: false)    
end

image_url_list.each_with_index do |url_list, index| 
    Article.create!(title: "Article No. #{index + 6} ",
                    description: "#{"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."}",
                    image_url: url_list,
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, neque id finibus dignissim, nisl nisl euismod lectus, vestibulum mattis est sapien sit amet massa. Suspendisse dignissim dapibus orci, a vulputate libero porttitor non. Sed hendrerit felis enim, non vehicula dolor tincidunt id. Donec et dapibus neque. Mauris vel vehicula ex. Integer a dignissim arcu, vitae sagittis enim. Vivamus quis porttitor est, eget ultricies tortor. Nullam porttitor enim quis ante pharetra commodo. Fusce luctus mauris sit amet orci placerat tincidunt. Sed tortor risus, eleifend vel commodo vel, semper quis lacus. Phasellus quis massa a purus fringilla feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse nec auctor urna, non luctus dolor. Mauris pellentesque sem ligula, vel varius diam imperdiet ac. Fusce placerat pharetra dolor.
                           In ac varius diam. Cras volutpat dignissim nisi ac gravida. Quisque ac lacus a quam congue tincidunt at a erat. Donec convallis, nisl vel iaculis blandit, augue dui fermentum nunc, in rutrum lorem diam vel elit. Suspendisse quis est dolor. Morbi nec est in leo dictum dignissim sed et augue. Nunc eget ante vehicula, porttitor magna lobortis, tempus augue. Proin condimentum, velit eu sodales vestibulum, ante ipsum auctor lorem, vitae placerat dui erat et lectus. Integer sapien neque, fermentum non ligula non, egestas laoreet ipsum. Donec tempor feugiat nulla ut commodo.
                           Quisque sit amet magna quam. Aenean in ipsum sit amet velit egestas tristique in non magna. Aenean nec tempus nunc. Nullam tempus nulla ac luctus ornare. Quisque ac lobortis massa. Curabitur commodo imperdiet condimentum. Aliquam est dui, bibendum vitae pretium eget, fringilla scelerisque enim. Cras nec tincidunt nunc. Morbi maximus sollicitudin sapien, et lobortis enim scelerisque at. Praesent eget fringilla tellus. Etiam finibus cursus porta. Vestibulum lacinia mollis nisi, sit amet malesuada ante commodo eget.
                           Vivamus feugiat imperdiet nulla, id luctus metus consequat mollis. Cras mauris justo, volutpat a tellus ut, vestibulum lacinia eros. Suspendisse felis libero, egestas ut cursus id, tristique et justo. Cras sodales rutrum nulla, dictum aliquam arcu dictum eget. Donec sollicitudin velit vel condimentum pellentesque. Nulla ut condimentum leo. Integer pretium, mauris eget feugiat gravida, diam lectus pellentesque mauris, eget lacinia magna lorem in mauris. Etiam blandit tortor sit amet magna lobortis posuere. Nulla tempor mattis gravida. Fusce nec maximus justo.
                           Phasellus odio ipsum, pellentesque malesuada risus vel, maximus fringilla mi. Suspendisse condimentum diam a velit facilisis, id feugiat nisl tristique. Nunc elit turpis, auctor in placerat vel, pellentesque vel risus. Cras eget lacus euismod, luctus lorem nec, tincidunt dui. Quisque posuere, eros vestibulum euismod suscipit, quam justo tempus dolor, vitae commodo eros sem non purus. Sed sed gravida mauris. Cras sed nunc volutpat, auctor elit non, dignissim leo. Praesent vel rhoncus orci. Donec sit amet urna semper est elementum volutpat. Etiam rutrum pretium neque id euismod. Vestibulum eu dolor lacus.",
                    user_id: 5,
                    author: User.find_by(id: 5).first_name + " " + User.find_by(id: 5).last_name,
                    edited: false,
                    published: false)    
end



# COMMENTS

(1..5).each do | u |
    (1..2).each do | v |
        (1..5).each do | w |

            uid = u + 5
            aid = v*w + (-1+v)*(5-w)

            Comment.create!(commenter: User.find_by(id: uid).first_name + " " + User.find_by(id: uid).last_name, 
                body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis, neque id finibus dignissim, nisl nisl euismod lectus, vestibulum mattis est sapien sit amet massa. Suspendisse dignissim dapibus orci, a vulputate libero porttitor non. Sed hendrerit felis enim, non vehicula dolor tincidunt id. Donec et dapibus neque. Mauris vel vehicula ex. Integer a dignissim arcu, vitae sagittis enim. Vivamus quis porttitor est, eget ultricies tortor. Nullam porttitor enim quis ante pharetra commodo. Fusce luctus mauris sit amet orci placerat tincidunt. Sed tortor risus, eleifend vel commodo vel, semper quis lacus. Phasellus quis massa a purus fringilla feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse nec auctor urna, non luctus dolor. Mauris pellentesque sem ligula, vel varius diam imperdiet ac. Fusce placerat pharetra dolor.",
                rating: u,
                user_id: uid,
                article_id: aid,
                reviewed: false,
                approved: false)

        end
    end
end