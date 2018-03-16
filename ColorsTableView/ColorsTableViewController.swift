//
//  ViewController.swift
//  ColorsTableView
//
//  Created by David Dean on 3/16/18.
//  Copyright © 2018 David Dean. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(colors.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        cell.backgroundColor = colors[indexPath.row]
        
        return(cell)
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

