//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by andy on 14/10/27.
//  Copyright (c) 2014年 Andy Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    @IBOutlet weak var titleLabel:UILabel!
    
   @IBAction func temperatureSliderChanged(sender: UISlider){
    
        self.updateTemptureDisplays()
    
    }
    
//     override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        
//        titleLabel.frame = CGRect(x: 16, y: (topLayoutGuide.length.isZero ? 16 : 16 + Double(topLayoutGuide.length)),  width: Double(screen.bounds.width), height: 21)
//        
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        println("screen bounds: \(screen.bounds)")
//        println("top layout guide: \(topLayoutGuide.length)")
//    }

    func  updateTemptureDisplays(){
        
        celsiusLabel.text = String(format: "%.1fC",temperatureSlider.value)
        fahrenheitLabel.text = String(format: "%.1fF",(temperatureSlider.value * 9/5 + 32))
        kelvinLabel.text = String(format: "%.2fK", (temperatureSlider.value + 273.15))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

