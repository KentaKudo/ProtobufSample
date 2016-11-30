//
//  ViewController.swift
//  Client
//
//  Created by Kenta Kudo on 2016/11/29.
//  Copyright © 2016年 KentaKudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var members = [Member]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var request = URLRequest(url: URL(string: "http://localhost:8090/")!)
        request.httpMethod = "GET"
        request.setValue("application/octet-stream", forHTTPHeaderField: "Accept")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            let rockBand = try! RockBand(protobuf: data!)
            self.members = rockBand.members
            DispatchQueue.main.async {
                self.title = rockBand.name
               self.tableView.reloadData() 
            }
        }.resume()
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = members[indexPath.row].name
            + " - "
            + members[indexPath.row].instrument.debugDescription
        
        return cell
    }
}
