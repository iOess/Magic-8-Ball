//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by iOess on 7/26/16.
//  Copyright © 2016 iOess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fortuneTextView: UITextView!
    
    let fortunes = ["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful", "It doesn't seem so", "Not at this time", "I'm thinking about it", "We'll see", "Of course", "Expect it", "We'll see", "I don't understand you"]

    override func canBecomeFirstResponder() -> Bool {
        return true // This specific file can receive events (in this case shake gestures)
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            let fortune = self.fortunes[random() % self.fortunes.count]
            self.fortuneTextView.text = fortune.uppercaseString
        }
    }

}

