//
//  ViewController.swift
//  TableView
//
//  Created by Mahmoud Fares on 29/06/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    
    let colorsArray = [UIColor.red,
                       UIColor.purple,
                       UIColor.blue,
                       UIColor.green,
                       UIColor.gray,
                       UIColor.orange]
    
    let data = ["Mahmoud",
                "Fares",
                "Ahmed",
                "Mohamed",
                "Omar",
                "Fares Mahmoud",
                "Khaled",
                "Abdulrhman",
                "Naguib",
                "Hussien",
    ]
    
    var colorsArrayTable: [UIColor] {
        let rounded = Float(data.count)/Float(colorsArray.count)
        let colorTable = Array(repeating: colorsArray, count: Int(rounded.rounded(.up))).flatMap{$0}
        return colorTable
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        else {return UITableViewCell()}
        cell.tableLabel?.text = data[indexPath.row]
        cell.tableLabel?.textColor = colorsArrayTable[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        tableView.tableFooterView = UIView()
    }

    

}


