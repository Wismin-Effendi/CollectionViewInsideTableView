//
//  ViewController.swift
//  Transportation
//
//  Created by Wismin Effendi on 6/5/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!

    
    // code properties
    var categories = Transporter.Categories.allValues
    
    var allTransporters = [[Transporter]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateTransporters()
    }

    // helper to populate data 
    private func populateTransporters() {
        for category in Transporter.Categories.allValues {
            let baseTitle = category.description()
            var tranportersOfThisKind = [Transporter]()
            for i in 1...Constant.itemPerCategory {
                tranportersOfThisKind.append(Transporter(title: "\(baseTitle)0\(i)", kind: category, imageName: "images/\(baseTitle.lowercased())0\(i).jpg"))
            }
            allTransporters.append(tranportersOfThisKind)
        }
    }

}


extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print(categories.count)
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section].description()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TransportCategoryRow
        
        cell.transporters = allTransporters[indexPath.section]
        cell.collectionView.reloadData()

        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (view.bounds.width / Constant.itemPerRow) - Constant.hardCodedPadding
    }
}
