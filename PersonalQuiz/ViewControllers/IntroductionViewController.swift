//
//  ViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 28/10/2021.
//

import UIKit

class IntroductionViewController: UIViewController {

    let questions = Question.getQuestions()
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {}
}

