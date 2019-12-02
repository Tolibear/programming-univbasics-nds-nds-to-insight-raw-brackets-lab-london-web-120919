$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  director_index = 0
  result = {
  }

  while director_index < nds.length do
    director_name = nds[director_index][:name]

    director_total = 0
    director_movies = nds[director_index][:movies]
    movie_index = 0
      while movie_index < director_movies.count do
        director_total += director_movies[movie_index][:worldwide_gross]
        movie_index += 1
      end

    result[:(director_name)] = director_total

    director_index += 1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!
  result
end
