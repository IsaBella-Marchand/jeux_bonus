# Les étapes de votre jeu seront:
# Souhaiter la bienvenue dans votre jeu.
# Demander à l'utilisateur d'entrer son nom et le saluer.
# Faire choisir le niveau de difficulté désiré.
# Jouer la partie.
# Demander si le joueur veut jouer à nouveau ou arrêter le programme. Si il veut rejouer, on retourne à l'étape 3.
# Si le joueur quitte le jeu, on le remercie d'avoir joué.
# Voici également les paramètres des niveaux de difficulté:
# Très facile: Chiffre de 1 à 10, essais illimités
# Facile: 1 à 10, 5 essais
# Moyen: 1 à 100, 6 essais
# Difficile: 1 à 500, 8 essais
# Très difficile: 1 à 1000, 9 essais
# À chaque essai du joueur, le jeu devra nous dire si la bonne réponse est plus élevé ou moins élevé (par exemple si la réponse est 5 et que j'entre 3, le jeu devra me dire que la réponse est plus élevée).
# Si le joueur ne trouve pas la bonne réponse avec le nombre d'essais alloués, on lui donne la réponse et on propose de rejouer ou quitter.


puts "-------Bienvenue à Kick the peeps------"
puts "Dis-moi, comment t'appelles-tu?"
name=gets.chomp
puts "Bonjour " + name + ", the peeps!"

    def start()
    puts "Comment te sens tu aujourd'hui? 1-Très faible? 2-Faible? 3-Métigé? 4-Fort? ou 5-très Fort?"
    puts "Inscris le chiffre correspondant à ton état."
    level=gets.to_i
        if level == 1
            infini = true
        elsif level == 2
            uptry = 5
            uprand = 10
        elsif level == 3
            uptry = 6
            uprand = 100
        elsif level == 4
            uptry = 8
            uprand = 500
        elsif level == 5
            uptry = 9
            uprand = 1000
        else 
            puts "Le niveau sélectionné n'existe pas."
            start()
        end
    end



def play()
    secret=rand(1..uprand)
    puts secret
    puts "Maintenant, choisi un chiffre entre 1 et #{uprand} inclusivement. Tu as #{uptry} essais!"
        
    for i in 1..uptry 
        chnum=gets.to_i
        if chnum==secret
            puts "Félicitation, tu es mon héro"
            break
        elsif chnum > secret
            puts "Le peeps a choisi un chiffre plus petit. Essaie à nouveau!"
           
        elsif chnum < secret
            puts "Le peeps a choisi un chiffre plus haut. Essaie à nouveau!"
           
        end
        if i == 4
        puts "Tes chances sont écoulées."
        end    
    end
     
end       
puts "Veux tu essayer à nouveau?"

