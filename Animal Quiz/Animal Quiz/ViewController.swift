//
//  ViewController.swift
//  Animal Quiz
//
//  Created by Selina Lin on 2/5/24.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    var questions: [String] = ["Which of these is NOT a type of squirrel?", "Which is healthy for a squirrel?", "How large is the Indian giant squirrel?"]
    var buttonAoptions: [String] = ["Plantain Squirrel", "Skittles", "1.5 – 2 kg"]
    var buttonBoptions: [String] = ["Eastern Grey Squirrel", "Walnuts", "3.5 – 4 kg"]
    var buttonCoptions: [String] = ["Japanese Dwarf Flying Squirrel", "Whipped Cream", "0.5 – 1 kg"]
    var buttonDoptions: [String] = ["Singaporean Red Squirrel", "Pepsi", "1 – 1.5 kg"]
    
    var i = 0

    @IBOutlet weak var correctness: UILabel!
    
    @IBOutlet weak var textA: UIButton!
    @IBOutlet weak var textB: UIButton!
    @IBOutlet weak var textC: UIButton!
    @IBOutlet weak var textD: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        correctness.text = "Welcome!"
        changeQuestions(i: i)
    }
    

    @IBAction func optionA(_ sender: Any) {
        if i == 2 {
            correctness.text = "Correct!"
        } else {
            correctness.text = "Incorrect!"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.correctness.text = "Select Guess!"
            
            // Make sure UI updates are on the main thread
            DispatchQueue.main.async {
                self.i = self.changeI(i: self.i)
                self.changeQuestions(i: self.i)
            }
        }
        
    }
    
    @IBAction func optionB(_ sender: Any) {
        if i == 1 {
            correctness.text = "Correct!"
        } else {
            correctness.text = "Incorrect!"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.correctness.text = "Select Guess!"
            
            // Make sure UI updates are on the main thread
            DispatchQueue.main.async {
                self.i = self.changeI(i: self.i)
                self.changeQuestions(i: self.i)
            }
        }
    }
    
    @IBAction func optionC(_ sender: Any) {
        correctness.text = "Incorrect!"
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.correctness.text = "Select Guess!"
            
            // Make sure UI updates are on the main thread
            DispatchQueue.main.async {
                self.i = self.changeI(i: self.i)
                self.changeQuestions(i: self.i)
            }
        }
    }
    
    @IBAction func optionD(_ sender: Any) {
        if i == 0 {
            correctness.text = "Correct!"
        } else {
            correctness.text = "Incorrect!"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.correctness.text = "Select Guess!"
            
            // Make sure UI updates are on the main thread
            DispatchQueue.main.async {
                self.i = self.changeI(i: self.i)
                self.changeQuestions(i: self.i)
            }
        }
    }
    
    @IBOutlet weak var question: UILabel!
    
    
    @IBOutlet weak var picture: UIImageView!
    
    func changeQuestions(i: Int) {
        question.text = questions[i]
        textA.setTitle(buttonAoptions[i], for: .normal)
        textB.setTitle(buttonBoptions[i], for: .normal)
        textC.setTitle(buttonCoptions[i], for: .normal)
        textD.setTitle(buttonDoptions[i], for: .normal)
    }
    
    func changeI(i: Int) -> Int {
        if (i == 2) {
            return 0
        } else  {
            return i + 1
        }
    }
    
}



