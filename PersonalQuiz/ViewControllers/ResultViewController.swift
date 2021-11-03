//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers: [Answer] = []

    @IBOutlet var topAnswerTitleLabel: UILabel!
    @IBOutlet var topAnswerSubtitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)
        
        print(getMostCommonAnswer(answers: answers))
            
    }

    
    // Определяем наиболее часто встречающийся тип животного
    private func getMostCommonAnswer(answers: [Answer]) -> AnimalType {
        
        var topAnswersType: AnimalType! // Тут есть сомнения, что это правильно... из-за !
        var answerDictionary: [AnimalType: Int] = [:]
        
        for answer in answers {
            // Если в словаре есть данный тип, то увеличиваем кол-во на 1
            if let count = answerDictionary[answer.type] {
                answerDictionary[answer.type] = count + 1
            } else {
                // Если в словаре отсутствует данный тип, то присваиваем к нему один
                answerDictionary[answer.type] = 1
            }
        }
        
        let highestValue = answerDictionary.values.max()

        for (answerType, _) in answerDictionary {
            if answerDictionary[answerType] == highestValue {
                topAnswersType = answerType
            }
        }
        
        return topAnswersType
    }
    
    // 3. Отобразить результаты в соотвствии с этим животным
    
}
