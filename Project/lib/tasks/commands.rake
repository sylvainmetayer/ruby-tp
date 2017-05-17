namespace :commands do
  desc "TODO"
  task generate_users: :environment do
    for i in 0..100
      u = User.new
      u.firstname = rand(36**8).to_s(36)
      u.lastname = rand(36**8).to_s(36)
      u.age = rand(10...60)
      u.save
    end

  end

end
