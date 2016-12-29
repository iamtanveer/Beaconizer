//
//  ViewController.swift
//  Beaconizer(Client)
//
//  Created by Gagandeep Nagpal on 29/12/16.
//  Copyright © 2016 Gagandeep Nagpal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beaconFound: UILabel!
    
    @IBOutlet weak var brand: UILabel!
    
    @IBOutlet weak var shop: UILabel!
    @IBOutlet weak var floor: UILabel!
    
   //var locationManager: CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.red
        
        self.brand.alpha = 0
        self.shop.alpha = 0
        self.floor.alpha = 0
        
        
            UIView.animate(withDuration: 10.0) {
                
                self.view.backgroundColor = UIColor.green
                
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            self.beaconFound.text = "beacon detected"
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(5), execute: {
            
            self.brand.alpha = 1
            self.shop.alpha = 1
            self.floor.alpha = 1
            
        })
        
        
        
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    
    }
    
    
    
    

}

