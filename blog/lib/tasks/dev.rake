namespace :dev do
  desc "Task responsável por configurar a aplicação em ambiente de desenvolvimento"
  task setup: :environment do
    10.times do |i|
      article = Article.create!(title: Faker::Lorem.sentence,
                                body: Faker::Lorem.paragraph(sentence_count: 4))

      article.comments.create!(commenter: Faker::Name.name, body: Faker::Lorem.paragraph)

      puts article.inspect
      puts article.comments.inspect
    end
  end

  desc "Task responsável por resetar a aplicação"
  task reset: :environment do
    puts %x(rails db:drop)
    puts %x(rails db:create)
    puts %x(rails db:migrate)
    puts %x(rails dev:setup)
  end
end
