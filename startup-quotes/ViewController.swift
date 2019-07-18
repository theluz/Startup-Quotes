//
//  ViewController.swift
//  startup-quotes
//
//  Created by Rodrigo Luz on 16/07/19.
//  Copyright © 2019 Rodrigo Luz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteBackground: UIImageView!
    
    let quotesArray = ["We are still Pre-Revenue...","We are coming out of Beta very soon...", "I’m not worried about losses because we are still in member acquisition mode...", "I know it is a kiosk deal, But...", "We are only taking money from friends and family at this time...", "Exactly when can I sell my shares...", "I will never sell out...", "I know it's my family member, but he/she is really the best for this position...","What is an org chart?", "We can have our company financials audited quickly and easily...", "We are loyalty based...", "We are currently speaking to (insert big name here)", "We tested off the charts...", "Our studies show (outlandish claim)", "The Media Loves us...", "We are developing an Ipad app as we speak...", "It is 100% scalable...", "We can bring this technology into any Industry...", "We will be on a panel at SXSW and CES next year...", "Our Company Culture is...", "We are committed to a supportive work environment...", "We are focused on many things...", "We can be everything to everyone", "We already have A LOT of Likes on Social Media...", "We are about to roll out our Social Media Campaign...", "Did I mention he / she went to Wharton?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomize()
    }
    func randomize(){
        let randomBackground = Int.random(in: 1...31)
        quoteBackground.image = UIImage(named:"bg" + "\(randomBackground)")
        
        let randomQuote = Int.random(in: 0...25)
        quoteLabel.text = quotesArray[randomQuote]
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomize()
    }
    
}

