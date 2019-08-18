//
//  TableViewController.swift
//  XCTestDemo
//
//  Created by chquanquan on 2019/8/18.
//  Copyright © 2019 chquanquan. All rights reserved.
//

import UIKit

fileprivate let cellIdentifier = "UITestCellIdentifier"

class TableViewController: UITableViewController {
    
    var cellNumber = 1

    override func viewDidLoad() {
        super.viewDidLoad()

         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNumber
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "cell number \(indexPath.row + 1)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .insert
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .insert {
            cellNumber += 1
            let insertIndexPath = IndexPath.init(row: indexPath.row + 1, section: indexPath.section)
            tableView.insertRows(at: [insertIndexPath], with: .automatic)
        }    
    }

}
