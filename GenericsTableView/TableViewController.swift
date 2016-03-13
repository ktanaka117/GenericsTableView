//
//  ViewController.swift
//  GenericsTableView
//
//  Created by 田中賢治 on 2016/03/13.
//  Copyright © 2016年 田中賢治. All rights reserved.
//

import UIKit

final class TableViewController: UITableViewController {
    
    let items: [Person]
    let cellStyle: UITableViewCellStyle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    init(items: [Person], style: UITableViewStyle, cellStyle: UITableViewCellStyle) {
        self.items = items
        self.cellStyle = cellStyle
        super.init(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func edit(sender: AnyObject) {
        self.tableView.editing = !self.tableView.editing
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        
        return cell
    }
    
}

