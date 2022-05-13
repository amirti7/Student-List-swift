//
//  StudentListViewController.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import UIKit

class StudentListViewController: UIViewController, MySegueProtocol{
    func getViewContainer(identifier: String) -> UIView {
        return contentView
    }
    

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    private var list:[Student] = Data.shared.getStudentList()
    var selectedCell: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "StudentTableViewCell", bundle: nil), forCellReuseIdentifier: "StudentTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        reload()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "openStudentDetails"){
            let dvc = segue.destination as! StudentDetailsViewController
            let st = list[selectedCell]
            dvc.student = st
        }
    }
    
    func reload() {
        list = Data.shared.getStudentList()
        tableView.reloadData()
    }
}

extension StudentListViewController: UITableViewDelegate,UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        cell.nameLabel.text = list[indexPath.row].name
        cell.idLabel.text = list[indexPath.row].id
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = indexPath.row
        performSegue(withIdentifier: "openStudentDetails", sender: self)
    }
}


