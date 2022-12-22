//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Petit Bradley on 12/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Rematch: UIButton!
    @IBOutlet weak var Rock: UIButton!
    @IBOutlet weak var Status: UILabel!
    @IBOutlet weak var Computer: UILabel!
    @IBOutlet weak var Scissors: UIButton!
    @IBOutlet weak var Paper: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI(State: .start)
    }

    @IBAction func PlayRock(_ sender: Any) {
        playOn(sign: .rock)
    }
    
    @IBAction func PlayPaper(_ sender: Any) {
        playOn(sign: .paper)

    }
    
    @IBAction func PlayScissors(_ sender: Any) {
        playOn(sign: .scissors)

    }
    
    @IBAction func ReplayButton(_ sender: Any) {
        updateUI(State: .start)
    }
    
    
    func playOn(sign:Sign){
        let BotPick = randomSign()
        let Checking = sign.checkWin(otherSign: BotPick)
        updateUI(State: Checking)
        Rematch.isHidden = false
        Computer.text = BotPick.emoji
        
    }
    func updateUI(State: GameState){
        if State == .start{
            Computer.text = "🤖"
            Status.text = "Rock, Paper, Scissors?"
            Rematch.isHidden = true
            Rock.isEnabled = true
            Paper.isEnabled = true
            Scissors.isEnabled = true
            
            
            
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)

        }
        
        
        if State == .win{
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            Status.text = "YOU WIN!"
            Rock.isEnabled = false
            Paper.isEnabled = false
            Scissors.isEnabled = false
        }
        
        if State == .draw{
            view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            Status.text = "It was a draw..."
            Rock.isEnabled = false
            Paper.isEnabled = false
            Scissors.isEnabled = false
        }
        
        if State == .lose{
            view.backgroundColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
            Status.text = "YOU LOSE!"
            Rock.isEnabled = false
            Paper.isEnabled = false
            Scissors.isEnabled = false

        }
        
    }
}


