//
//  ViewController.swift
//  UILabel Wipe
//
//  Created by Tyler R on 12/12/18.
//  Copyright © 2018 Tyler R. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var dynamicTableView: UITableView!
    var labels: [UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dynamicTableView.delegate = self
        dynamicTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        for cell in dynamicTableView.visibleCells {
            if let textLabel = cell.textLabel {
                labels.append(textLabel)
            }
        }
        for label in labels {
            print(label.superview as Any)
        }
    }
    
    @IBAction func listOffSuperviews(_ sender: Any) {
        for label in labels {
            print(label.superview as Any)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(indexPath.row)") else { return UITableViewCell() }
        return cell
    }
}
