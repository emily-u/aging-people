//
//  ViewController.swift
//  Aging People
//
//  Created by Emily on 1/13/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableField: UITableView!

    
    var tasks = ["Anna", "Bnna", "Cnna", "Dnna", "Enna", "Fnna", "Gnna", "Hnna", "Inna", "Jnna", "Knna", "Lnna"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableField.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
//        cell.textLabel?.text = tasks[indexPath.row]
        cell.textLabel?.text = tasks[indexPath.row]
        cell.detailTextLabel?.text = String(arc4random_uniform(91) + 5) + " years old"
        return cell
    }
}
