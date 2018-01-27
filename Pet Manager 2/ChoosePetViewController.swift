//
//  ChoosePetViewController.swift
//  Pet Manager
//
//  Created by Cindy Hernandez-20 on 10/20/17.
//  Copyright © 2017 Cindy Hernandez-20. All rights reserved.
//

import UIKit

class ChoosePetViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
let defaults = UserDefaults.standard
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var choice = ""
    
    @IBAction func choseDog(_ sender: Any) {
        choice = "dog"
//
//        let defaults = UserDefaults.standard
        defaults.set("dog", forKey: "choice")

    }
    
    @IBAction func choseFish(_ sender: Any) {
         choice = "fish"
//        let defaults = UserDefaults.standard
        defaults.set("fish", forKey: "choice")

    }
    
    @IBAction func choseCat(_ sender: Any) {
         choice = "cat"
//        let defaults = UserDefaults.standard
        defaults.set("cat", forKey: "choice")
    }
    
   
    @IBAction func Done(_ sender: Any) {
        self.performSegue(withIdentifier: "petToReminders", sender: nil)
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let View:ViewController = segue.destination as!ViewController
//        View.setText(t: choice)
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


