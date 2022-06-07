//
//  ViewController.swift
//  RGBSlider
//
//  Created by Marat_FMK on 04.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var rColorValue: UILabel!
    
    @IBOutlet weak var gColorValue: UILabel!
    
    @IBOutlet weak var bColorValue: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider! {
        didSet{
            redSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet weak var greenSlider: UISlider! {
        didSet{
            greenSlider.tintColor = UIColor.green
        }
    }
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        rColorValue.text = String(redSlider.value)
        gColorValue.text = String(greenSlider.value)
        bColorValue.text = String(blueSlider.value)
    }
            
    
            
    func changeColor() {
        colorView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
 
    @IBAction func rgbSliderChanged(_ sender: Any) {
        changeColor()
        
        rColorValue.text = String(redSlider.value)
        gColorValue.text = String(greenSlider.value)
        bColorValue.text = String(blueSlider.value)
    }
    
    
    
    
}

