//
//  ViewController.swift
//  Zodiac
//
//  Created by Damnjan Markovic on 01/06/2020.
//  Copyright © 2020 Damnjan Markovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMonthSelected: UILabel!
    @IBOutlet weak var lblMonthSelectedInt: UILabel!
    @IBOutlet weak var lblDateSelected: UILabel!
    @IBOutlet weak var sliderDayOutlet: UISlider!
    @IBOutlet weak var sliderMonthOutlet: UISlider!
    @IBOutlet weak var lblBirthDay: UILabel!
    var zodiac = ZodiacSignCalculate()
    
    var date = 0
    var month = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func sliderDayAction(_ sender: UISlider) {
        let date = String(format: "%.0f", sender.value)
        lblDateSelected.text = "Selected date: \(date)."
        
    }
    
    
    @IBAction func sliderMonthAction(_ sender: UISlider) {
        let month = String(format: "%.0f", sender.value)
        setMonth (month: month)
    }
    
    func setMonth(month: String) {
        switch month {
            case "1":
            lblMonthSelected.text = "Month: January"
            case "2":
                lblMonthSelected.text = "Month: February"
            case "3":
                lblMonthSelected.text = "Month: March"
            case "4":
                lblMonthSelected.text = "Month: April"
            case "5":
                lblMonthSelected.text = "Month: May"
            case "6":
                lblMonthSelected.text = "Month: June"
            case "7":
                lblMonthSelected.text = "Month: July"
            case "8":
                lblMonthSelected.text = "Month: August"
            case "9":
                lblMonthSelected.text = "Month: September"
            case "10":
                lblMonthSelected.text = "Month: October"
            case "11":
                lblMonthSelected.text = "Month: November"
            case "12":
                lblMonthSelected.text = "Month: December"
        default:
            lblMonthSelected.text = "Month: "
        }
    }
    
    @IBAction func btnShowSign(_ sender: UIButton) {
        let date = Int(sliderDayOutlet.value)
        let month = Int(sliderMonthOutlet.value)
        zodiac.getZodiacSign(day: date, month: month)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.personSign = zodiac.getPersonSign()
            destinationVC.personSignImage = zodiac.getPersonImage()
        }
    }
    
    
    
}

