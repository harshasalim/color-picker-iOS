//
//  HomeViewController.swift
//  Practice#1
//
//  Created by Harsha Salim on 22/08/20.
//  Copyright © 2020 Harsha Salim. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var hexVal: UILabel!
    
    @IBOutlet weak var redVal: UILabel!
    @IBOutlet weak var greenVal: UILabel!
    @IBOutlet weak var blueVal: UILabel!
    
    let alpha = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //opTextField.text="Textfield text"
        //opLabel.text="label text"
        //opButton.setTitle("Button", for: .normal)
    }
    func checkColor(){
    self.view.backgroundColor = UIColor(red:CGFloat(redSlider.value/255), green:CGFloat(greenSlider.value/255), blue:CGFloat(blueSlider.value/255), alpha: CGFloat(alpha))
        
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var al:CGFloat = 0
        self.view.backgroundColor!.getRed(&r, green: &g, blue: &b, alpha: &al)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        hexVal.text=String(format: "#%06x", rgb)
        
        var a = 1 - (0.299 * redSlider.value + 0.587 * greenSlider.value + 0.114 * blueSlider.value) / 255;
        if(a>0.5){
            redVal.textColor = UIColor.white
            greenVal.textColor = UIColor.white
            blueVal.textColor = UIColor.white
            appTitle.textColor = UIColor.white
            heading.textColor = UIColor.white
            hexVal.textColor = UIColor.white
        }
        else{
            redVal.textColor = UIColor.black
            greenVal.textColor = UIColor.black
            blueVal.textColor = UIColor.black
            appTitle.textColor = UIColor.black
            heading.textColor = UIColor.black
            hexVal.textColor = UIColor.black
        }
    }
    
    @IBAction func redAction(_ sender: Any) {
        redVal.text=String(redSlider.value)
        checkColor()
        
    }
    
    @IBAction func greenAction(_ sender: Any) {
        greenVal.text=String(greenSlider.value)
          checkColor()
                }
    
    @IBAction func blueAction(_ sender: Any) {
        blueVal.text=String(blueSlider.value)
          checkColor()
                }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
