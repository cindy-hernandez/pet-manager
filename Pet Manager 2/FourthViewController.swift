//
//  FourthViewController.swift
//  Pet Manager
//
//  Created by Cindy Hernandez-20 on 11/6/17.
//  Copyright © 2017 Cindy Hernandez-20. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func reminders(_ sender: Any) {
    self.performSegue(withIdentifier: "profileToReminders", sender: nil)
    }
    
    @IBAction func home(_ sender: Any) {
         self.performSegue(withIdentifier: "profileToHome", sender: nil)
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
