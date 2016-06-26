//
//  ViewController.swift
//  savedData
//
//  Created by Daniel Stagnaro on 6/10/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favColorLbl: UILabel!
    @IBOutlet weak var favCountryLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favCountryLbl.text = "No favorite country yet"
        
        updateLabels()
        
    }
    
    func updateLabels() {
        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            favColorLbl.text = "Favorite color: \(color)"
        } else {
            favColorLbl.text = "No favorite color yet"
        }
        
        if let country = NSUserDefaults.standardUserDefaults().valueForKey("country") as? String {
            favCountryLbl.text = "Favorite Country: \(country)"
        } else {
            favCountryLbl.text = "No favorite country yet"
        }
    }


    @IBAction func red(sender: AnyObject) {
        favColorLbl.text = "Favorite color: Red"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    @IBAction func blue(sender: AnyObject) {
        favColorLbl.text = "Favorite color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()

    }
    
    @IBAction func green(sender: AnyObject) {
        favColorLbl.text = "Favorite color: Green"
        NSUserDefaults.standardUserDefaults().setValue("Green", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func america(sender: AnyObject) {
        favCountryLbl.text = "Favorite country: Amercia"
        NSUserDefaults.standardUserDefaults().setValue("America", forKey: "country")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func italy(sender: AnyObject) {
        favCountryLbl.text = "Favorite country: Italy"
        NSUserDefaults.standardUserDefaults().setValue("Italy", forKey: "country")
        NSUserDefaults.standardUserDefaults().synchronize()

    }
    
    @IBAction func europe(sender: AnyObject) {
        favCountryLbl.text = "Favorite country: Europe"
        NSUserDefaults.standardUserDefaults().setValue("Europe", forKey: "country")
        NSUserDefaults.standardUserDefaults().synchronize()

    }
    
    @IBAction func reset(sender: UIButton) {
        NSUserDefaults.standardUserDefaults().setURL(nil, forKey: "color")
        NSUserDefaults.standardUserDefaults().setURL(nil, forKey: "country")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        updateLabels()
    }
    
}

