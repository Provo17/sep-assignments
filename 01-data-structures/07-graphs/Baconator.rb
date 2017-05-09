include 'node'

class Baconator

  def find_kevin_bacon(actor)
    films = []
    actor.film_actor_hash.each do |title, actors|
      actors.each do |actor|
        if actor == "Kevin_Bacon"
           films.push(title)
        else
          find_kevin_bacon(actor)
        end
      end
    end
    if films.length <= 6 && films.length > 0  
        puts "Connected by films: #{films.all}" 
    else
        puts "Close but no Bacon!"
  end
end