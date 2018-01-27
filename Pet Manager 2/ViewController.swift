//
//  ViewController.swift
//  Pet Manager
//
//  Created by Cindy Hernandez-20 on 10/16/17.
//  Copyright © 2017 Cindy Hernandez-20. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
//    func setText(t: String) { // 2
//        choice = t
//    }
    var choice:String = ""
    
    var dogReminders: [String] = ["","9:00 feed  dog"," 1:00 walk dog","2:00 brush dog"]
    var fishReminders: [String] = ["","9:00 feed  fish"," 1:00 check filter"]
    var catReminders: [String] = ["","9:00 feed  cat"," 1:00 brush dog","2:00 feed cat"]
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(choice == "dog"){
            return dogReminders.count
        }
        if(choice == "fish"){
            return fishReminders.count
        }
        if(choice == "cat"){
            return catReminders.count
        }
        else{
            return dogReminders.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        if(choice == "dog"){
            cell.textLabel?.text = dogReminders[indexPath.row]
        }
        if(choice == "fish"){
            cell.textLabel?.text = fishReminders[indexPath.row]
        }
        if(choice == "cat"){
            cell.textLabel?.text = catReminders[indexPath.row]
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        choice = defaults.string(forKey: "choice")!
        // Do any additional setup after loading the view, typically from a nib
        // The following statement is what you need
       
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func home(_ sender: Any) {
        self.performSegue(withIdentifier: "mainToHome", sender: nil)
    }
    
    @IBAction func profile(_ sender: Any){
        self.performSegue(withIdentifier: "mainToProfile", sender: nil)
        
    }
    
}

