#movies = {
#    'will_hunting' => '4.3'
#}

movies = Hash.new
#movies['will_hunting'] = "4.3"
movies = {
    toto: 4,
    tutu: 3,
    tata: 1,    
}
puts movies
print "What is your choice ? : "
choice = gets.chomp

case choice
when "add" 
    print "Enter a movie name : "
    title = gets.chomp
    print "Enter a rating for this movie : "
    rating = gets.chomp
    if movies[title.to_sym].nil?
        movies[title.to_sym] = rating.to_i
        puts "New movie added!"        
    else
        puts "The movie \"#{title}\" already exists!" 
    end
    #movies = {
    #    title => rating
    #}
when "update"
    print "Enter a movie name : " 
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie \"#{title}\" doesn't exist!"
    else
        print "Enter a new rating for this movie : "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Movie \"#{title}\" updated!"
    end
when "display"
    puts "List of Movies : " 
    movies.each { |movie,rating|
        puts "#{movie}: #{rating}"
    }
when "delete"
    print "Enter a movie's name to delete : "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie \"#{title}\" doesn't exist!"
    else
        movies.delete(title.to_sym)
        puts "Movie \"#{title}\" deleted!"
    end
else
    puts "Error!"
end
puts movies