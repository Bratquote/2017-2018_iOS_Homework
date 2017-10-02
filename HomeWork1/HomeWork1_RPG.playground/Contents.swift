//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Unit {
    var Wins: Int = 0
    var Loses: Int = 0
    var FullHealth: Double
    var Health: Double
    var Damage: Double
    var Protect: Double
    var Agility: Double
    let NickName: String
    init (FullHealth: Double, Damage: Double, Protect: Double, Agility: Double, NickName: String)
    {
        self.FullHealth = FullHealth
        self.Health = FullHealth
        self.Damage = Damage
        self.Protect = Protect
        self.Agility = Agility
        self.NickName = NickName
    }
    func addWins()
    {
        self.Wins += 1
    }
    func addLoses()
    {
        self.Loses += 1
    }
    func playerInfo()
    {
        print("Player - \(self.NickName) \n FullHealth = \(self.FullHealth) \n Damage = \(self.Damage)  \n Protect = \(self.Protect) \n Agility =  \(self.Agility) \n ")
    }
    func attack(to enemy: Unit)
    {
        if self.Damage > enemy.Protect {
           enemy.Health -= self.Damage - enemy.Protect
        }
    }
    
}

class Mage: Unit {
    
}
class Knight: Unit {
    
}
class Assasin: Unit {
    
}
class BattleGround {
    func beginBattle(with playersUp: [Unit])
    {
        for i in playersUp {
            players2.append(i)
        }
        players = players2
        while players.count > 1 {
            fight(player1: 0, player2: 1)
            
        }
        players[0].Wins += 1
        sortPlayers()
        
        print("1.\(players2[0].NickName) Wins - \(players2[0].Wins) Loses - \(players2[0].Loses) ")
        print("2.\(players2[1].NickName) Wins - \(players2[1].Wins) Loses - \(players2[1].Loses) ")
        print("3.\(players2[2].NickName) Wins - \(players2[2].Wins) Loses - \(players2[2].Loses) ")
    }
    func updatePlayers(update x: Unit)
    {
        for i in 0...players2.count-1{
            if players2[i].NickName == x.NickName
            {
                players2[i].Wins += x.Wins
                players2[i].Loses += x.Loses
            }
        }
    }
    func sortPlayers()
    {
        for i in 0...players2.count-2{
            if players2[i].Wins > players2[i+1].Wins {
                let kek = players2[i]
                players2[i] = players2[i+1]
                players2[i+1] = kek
            }
            if players2[players2.count-1].Wins > players2[0].Wins {
                let x = players2[0]
                players2[0] = players2[players2.count-1]
                players2[players2.count-1] = x
            }
        }
    }
    
    func fight(player1 : Int, player2: Int)
    {
        players[player1].Health = players[player1].FullHealth
        players[player2].Health = players[player2].FullHealth
        
        while(true)
        {
            players[player1].attack(to: players[player2])
            if players[player2].Health <= 0 {
                players[player2].Loses += 1
                //updatePlayers(update: players[player2])
                players.remove(at: player2)
                break
            }
            players[player2].attack(to: players[player1])
            if players[player1].Health <= 0 {
                players[player1].Loses += 1
                //updatePlayers(update: players[player1])
                players.remove(at: player1)
                break
            }
            if players[player1].Damage < players[player2].Protect && players[player2].Damage < players[player1].Protect {
                if players[player1].Agility > players[player2].Agility {
                    players[player2].Loses += 1
                    updatePlayers(update: players[player1])
                    players.remove(at: player2)
                }
                else if players[player1].Agility == players[player2].Agility {
                    let x: Int = Int(arc4random())
                    if x%2 == 0 {
                        players[player2].Loses += 1
                        updatePlayers(update: self.players[player2])
                        players.remove(at: player2)
                    }
                }
                else {
                    players[player1].Loses += 1
                    updatePlayers(update: players[player1])
                    players.remove(at: player1)
                }
            }
            
            
        }
    
    }
    var players: [Unit] = []
    var players2: [Unit] = []
    //test players
    
    

}


var kek1: Unit = Mage(FullHealth: 100, Damage: 10, Protect: 3, Agility: 5, NickName: "Argo")
var kek2: Unit = Knight(FullHealth: 150, Damage: 7, Protect: 5, Agility: 3, NickName: "Brave")
var kek3: Unit = Assasin(FullHealth: 120, Damage: 12, Protect: 0, Agility: 7, NickName:"Roge")
var kek4: Unit = Mage(FullHealth: 90, Damage: 12, Protect: 4, Agility: 4, NickName: "Milin")

var Arena: BattleGround = BattleGround()
Arena.beginBattle(with: [kek1,kek2,kek3,kek4])




    







