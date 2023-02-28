//
//  ViewController.swift
//  TBaleViewExample
//
//  Created by Ahmet GÜVENDİK on 27.02.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var datas = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = UITableViewCell()
        data.textLabel?.text = datas[indexPath.row]
        return data
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            datas.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }

    @IBOutlet weak var tableView: UITableView!
    var detailData = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       
        datas.append("X")
        datas.append("Y")
        datas.append("Z")
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        detailData = datas[indexPath.row]
        performSegue(withIdentifier: "toDetailsPage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsPage"{
            var detailsVC = segue.destination as! DetailsViewController
            detailsVC.detailText = detailData
            
        }
        
    }
    
}

