//
//  ThirdViewController.swift
//  Pet Manager
//
//  Created by Cindy Hernandez-20 on 11/6/17.
//  Copyright © 2017 Cindy Hernandez-20. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reminders(_ sender: Any) {
    self.performSegue(withIdentifier: "homeToReminders", sender: nil)
    }
   
   
    @IBAction func profile(_ sender: Any) {
        self.performSegue(withIdentifier: "homeToProfile", sender: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
