
puts "-------Bienvenue à Kick the chicks------"
puts "Bonjour petit poussin, quel est ton nom?"
name=gets.chomp
puts "Tu t'appelles vraiment " + name + ", tes parents t'aimaient pas."


def play()
    insulte = ["My God, tu n'es pas le crayon le plus aiguisé de la boîte!","Les gens comme toi n'y sont pour rien." "Bande-toi les yeux et cours très vite dans une forêt.", "Un petit effort...", ".......... sérieux?!", "J'ai plus de couilles que toi!", "Tu vaux pas mieux que Jar Jar Binks.", "T'aurais du prendre un niveau à ta hauteur, petit poussin.", "Tu te rappelles le temps ou t'étais bon?Ah non... c'est jamais arrivé.", "Iiiish Arrête là, tu te fais du mal.", "Do not worry, beigne inquiet!", "T'as fait combien de commotions cérébrales.", "Tu as probablement été conçu à botch dans un party de bureau."]
    puts "-----------------------------------------------------------------------------"
    puts "Es-tu prêt à me montrer que tu es un homme... à moins que tu sois un petit poussin?"
    puts "Choisis ton niveau de difficulté : 1- peeps? 2- poussin? 3- Homme? 4- Jean-Claude Van Dam? ou 5- Chuck Norris?"
    puts "Inscris le chiffre correspondant au niveau choisi."
    level=gets.to_i
    if level == 1
        uptry = 1000000
        limite = 10
        puts "...tapette..."
    elsif level == 2
        uptry = 5
        limite = 10
        puts "...ah le tout petit poussin..."
    elsif level == 3
        uptry = 6
        limite= 100
        puts "Voyons si tu es un homme avec un grand H..."
    elsif level == 4
        uptry = 8
        limite = 500
        puts "Perfomant, flexible et puissant à la fois, comme EC2!"
    elsif level == 5
        uptry = 9
        limite = 1000
        puts "Tu ne te prends pas pour de la marde!"
    else 
        puts "Le niveau sélectionné n'existe pas. Écoute ce que je t'ai dit et COMPRENDS"
        start()
    end

    secret=rand(1..limite)
    puts secret
    puts "Maintenant, choisi un chiffre entre 1 et #{limite} inclusivement. Tu as #{uptry} essais! Fais un effort."
    for i in 1..uptry 
        chnum=gets.to_i
        if chnum==secret
            puts "Félicitation, tu es mon héro"
            break
        elsif chnum > secret
            if chnum > limite
                puts " Écoute et COMPRENDS, je répète : tu dois choisir un chiffre entre 1 et #{limite} inclusivement. Il te reste #{uptry-i} essais."
            else
                puts insulte[rand(0..insulte.length)]
                puts "J'ai choisi un chiffre plus petit."
            end
        elsif chnum < secret
            if chnum < 1
                puts " Écoute et COMPRENDS, je répète : tu dois choisir un chiffre entre 1 et #{limite} inclusivement. Il te reste #{uptry-i} essais"
            else
                puts insulte[rand(0..insulte.length)]
                puts "J'ai choisi choisi un chiffre plus haut."   
            end
            
        end
        if i == uptry
        puts "Tes chances sont écoulées."
        puts "J'avais choisi #{secret}"
        end 
        
     end
           
    

end

play()

    
    
    
puts name + " ,veux tu essayer à nouveau? Choisi entre oui ou non"
again = gets.chomp
if again == "oui"
    play()
elsif again == "non"
    puts "Bonne idée, maintenant va t’enterrer pour voir si tu pousses."
end



