//
//  File.swift
//  PersonalityQuiz
//
//  Created by Ansh Verma on 06/03/24.
//

import Foundation
 
struct Question  {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
    
    enum AnimalType: Character {
        case dog = "🐶", cat = "🐱", rabbit = "🐰", lion = "🦁"
        
        var definition: String {
            switch self {
            case .dog:
                return "dog"
            case .cat:
                return "cat"
            case .rabbit:
                return "rabbit"
            case .lion:
                return "lion"
            }
        }
    }
}

var questions: [Question] = [
  Question(
    text: "Which food do you like the most?",
    type: .single,
    answers: [
      Answer(text: "Steak", type: .dog),
      Answer(text: "Fish", type: .cat),
      Answer(text: "Carrots", type: .rabbit),
      Answer(text: "Meat", type: .lion)
    ]
  ),
  Question(
      text: "Which activities do you enjoy?",
      type: .multiple,
      answers: [
        Answer(text: "Swimming", type: .lion),
        Answer(text: "Sleeping", type: .cat),
        Answer(text: "Cuddling", type: .rabbit),
        Answer(text: "Eating", type: .dog)
      ]
    ),
    Question(
      text: "How much do you enjoy car rides?",
      type: .ranged,
      answers: [
        Answer(text: "I dislike them", type: .cat),
        Answer(text: "I get a little nervous", type: .rabbit),
        Answer(text: "I barely notice them", type: .lion),
        Answer(text: "I love them", type: .dog)
      ]
    )
  ]

var questionIndex = 0


