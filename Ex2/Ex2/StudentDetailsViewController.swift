//
//  StudentDetailsViewController.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var address: UILabel!
    
    var student:Student?{
        didSet{
            if(id != nil){
                id.text = student?.id
                name.text = student?.name
                phone.text = student?.phone
                address.text = student?.address
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let student = student {
            name.text = student.name
            id.text = student.id
            phone.text = student.phone
            address.text = student.address
        }
    }
}
