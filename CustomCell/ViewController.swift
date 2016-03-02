//
//  ViewController.swift
//  CustomCell
//
//  Created by cat-07 on 2016/03/02.
//  Copyright © 2016年 cat-07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cellData:[CellModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        for (var i = 0; i < 30; i++) {
            let model = CellModel.init()
            model.customName = "name\(i + 1)"
            model.customId = i + 1
            cellData.append(model)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell: CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomTableViewCell
        
        let model: CellModel = cellData[indexPath.row]
        
        cell.customNameLabel.text = model.customName
        cell.customIdLabel.text = "\(model.customId)"

        return cell
    }

}

