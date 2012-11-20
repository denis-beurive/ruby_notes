
# Contrairement à d’autres langages, les parenthèses autour des arguments ne sont pas obligatoires.

def func1 a, b
  puts "#{a} #{b}"
end
def func1a (a, b)
  puts "#{a} #{b}"
end
func1 'toto', 'titi'
func1('toto', 'titi')
func1a 'toto', 'titi'
func1a('toto', 'titi')

# Utilisation de yield.
# Ce mot clé permet d’exécuter un bloc de code passé en argument à une fonction.
# Le bloc peut être défini de deux façons : un couple d’accolades, ou un bloc « do ... end ».

def func2 
  yield 'toto'
end
func2 {|p| puts "The given value is #{p}"}
func2 do |p|
  puts "The given value is #{p}"
end

# Utilisation des tables de hachage.
# La clé peut être n’importe quel objet (ex: une expression régulière).

special_key = /^as$/
h = { 'blue' => 'bleu', :red => 'rouge', special_key => 'regexp' }
puts "1: #{h['blue']}"
key = :red
puts "2: #{h[key]}"
puts "3: #{h[/^as$/]}"

def func3 map
  puts "object => #{map[:object]}"
  puts "couleur => #{map[:couleur]}"
end
func3 object:'voiture', couleur:'camion'
func3 :object => 'voiture', :couleur => 'camion'


# Utilisation des tables de hachage et des fonctions lambdas.

def func4 key
  traductor = {
    blue: 'bleu',
    red: 'rouge'
  }
  yield traductor[key]
end
func4 :blue do |en|
  puts "French: #{en}"
end



