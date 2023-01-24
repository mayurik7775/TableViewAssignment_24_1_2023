//
//  ViewController.swift
//  AssignmentTableView
//
//  Created by Mac on 24/01/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    

    @IBOutlet weak var SnaksTableView: UITableView!
    
    var Snaks : [String] = ["buurger","Dhosa","Poha","VadaPav","Noodles"]
    var SnaksImages : [String] = ["buurger","Dhosa","Poha","VadaPav","Noodles"]
    
    var MainCource : [String] = ["PavBhaji","Puri Bhaji","ShevBhaji","Thali","Paneer"]
    var MainCourceImages : [String] = ["PavBhaji","Puri Bhaji","ShevBhaji","Thali","Paneer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SnaksTableView.delegate = self
        SnaksTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Snaks.count
        return MainCource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var  cell = self.SnaksTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if(indexPath.section == 0){
            cell.textLabel?.text = Snaks[indexPath.row]
            cell.imageView?.image = UIImage(named: SnaksImages[indexPath.row])
        }else{
            cell.textLabel?.text = MainCource[indexPath.row]
            cell.imageView?.image = UIImage(named: MainCource[indexPath.row])
        }
        return  cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 80))
        view.backgroundColor = .white
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
        
        if (section == 0){
            label.text = "           Snaks"
            label.font = .systemFont(ofSize: 50.0)
        }else{
            label.text = "          MainCource"
            label.font = .systemFont(ofSize: 50.0)
        }
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        40
    }
}

