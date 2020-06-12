//
//  ZodiacSignCalculate.swift
//  Zodiac
//
//  Created by Damnjan Markovic on 01/06/2020.
//  Copyright © 2020 Damnjan Markovic. All rights reserved.
//

import Foundation
import UIKit

struct ZodiacSignCalculate {
    
    var person: Person?
    
    func getPersonImage() -> UIImage {
        return person?.imageZodiacSign ?? #imageLiteral(resourceName: "zodiac_title")
    }
    
    func getPersonSign() -> String {
        return person?.zodiacSign ?? "Something went wrong"
    }
    
    mutating func getZodiacSign(day: Int, month: Int){
        if (month == 3 && day > 20) || (month == 4 && day < 20){
            person = Person(zodiacSign: "Aries", imageZodiacSign: #imageLiteral(resourceName: "aries"))
        } else if (month == 4 && day > 19) || (month == 5 && day < 21){
            person = Person(zodiacSign: "Taurus", imageZodiacSign: #imageLiteral(resourceName: "taurus"))
        } else if (month == 5 && day > 20) || (month == 6 && day < 21){
            person = Person(zodiacSign: "Gemini", imageZodiacSign: #imageLiteral(resourceName: "gemini"))
        } else if (month == 6 && day > 20) || (month == 7 && day < 23){
            person = Person(zodiacSign: "Cancer", imageZodiacSign: #imageLiteral(resourceName: "cancer"))
        } else if (month == 7 && day > 22) || (month == 8 && day < 23){
            person = Person(zodiacSign: "Leo", imageZodiacSign: #imageLiteral(resourceName: "leo"))
        } else if (month == 8 && day > 22) || (month == 9 && day < 23){
            person = Person(zodiacSign: "Virgo", imageZodiacSign: #imageLiteral(resourceName: "virgo"))
        } else if (month == 9 && day > 22) || (month == 10 && day < 23){
            person = Person(zodiacSign: "Libra", imageZodiacSign: #imageLiteral(resourceName: "libra"))
        } else if (month == 10 && day > 22) || (month == 11 && day < 22){
            person = Person(zodiacSign: "Scorpio", imageZodiacSign: #imageLiteral(resourceName: "scorpio"))
        } else if (month == 11 && day > 21) || (month == 12 && day < 22){
            person = Person(zodiacSign: "Sagittarius", imageZodiacSign: #imageLiteral(resourceName: "sagitarius"))
        } else if (month == 12 && day > 21) || (month == 1 && day < 20){
            person = Person(zodiacSign: "Capricorn", imageZodiacSign: #imageLiteral(resourceName: "capricorn"))
        } else if (month == 1 && day > 19) || (month == 2 && day < 19){
            person = Person(zodiacSign: "Aquarius", imageZodiacSign: #imageLiteral(resourceName: "aquarius"))
        } else if (month == 2 && day > 18) || (month == 3 && day < 21){
            person = Person(zodiacSign: "Pisces", imageZodiacSign: #imageLiteral(resourceName: "pisces"))
    } else {
            
        }
    }
    
}
