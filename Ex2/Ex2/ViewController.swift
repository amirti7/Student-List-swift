//
//  ViewController.swift
//  Ex2
//
//  Created by Lee Wolf on 10/05/2022.
//

import UIKit

class ViewController: UIViewController, MySegueProtocol {
   
    func getViewContainer(identifier: String) -> UIView {
        return customTabBar
    }
    
    var studentListVC: StudentListViewController?
    var addStudentVC: AddStudentViewController?
    var aboutVC: AboutViewController?

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var customTabBar: UIView!
   
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var aboutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        performSegue(withIdentifier: "studentListSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "studentListSegue"){
            let dvc = segue.destination as! StudentListViewController
            studentListVC = dvc
        }
    }

    @IBAction func homePressed(_ sender: Any) {
        performSegue(withIdentifier: "studentListSegue", sender: self)
    }
    
    @IBAction func addPressed(_ sender: Any) {
        performSegue(withIdentifier: "addStudentSegue", sender: self)
    }
    
    @IBAction func aboutPressed(_ sender: Any) {
        performSegue(withIdentifier: "aboutSegue", sender: self)
    }
    
}



