//
//  ViewController.swift
//  Quiz
//
//  Created by anieson on 2017/8/14.
//  Copyright © 2017年 bitlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
/*   A connection lets one object know where another object is in memory so that the two objects can communicate. There are two kinds of connections that you can make in Interface Builder: outlets and actions. An outlet is a reference to an object. An action is a method that gets triggered by a button or some other view that the user can interact with */
    
    //The @IBOutlet keyword tells Xcode that you will connect these outlets to label objects using Interface Builder.
    @IBOutlet var questionLabel:UILabel!
    @IBOutlet var answerLabel:UILabel!
    
    
    // The questions and answers in this quiz will not change and, in fact, cannot be changed from their initial values.
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes" ]
    
    //The integer will keep track of what question the user is on. You made the currentQuestionIndex property a variable because its value must be able to change as the user cycles through the questions and answers.
    var currentQuestionIndex: Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text=questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender:UIButton){
        currentQuestionIndex+=1
        if currentQuestionIndex==questions.count{
            currentQuestionIndex=0
        }
        let question:String=questions[currentQuestionIndex]
        questionLabel.text=question
        answerLabel.text="???"
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        let answer:String=answers[currentQuestionIndex]
        answerLabel.text=answer
    }
    
}

