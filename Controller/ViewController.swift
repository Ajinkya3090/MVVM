//
//  ViewController.swift
//  MVVM
//
//  Created by Admin on 24/12/21.
//

import UIKit

class ViewController: UIViewController {

    let parser = Parser()
    var contacts = [Contact]()
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        parser.parser {
            data in
            self.contacts = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        tableView.dataSource = self
        
    }


    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].userId
        return cell
    }
    
    
}
