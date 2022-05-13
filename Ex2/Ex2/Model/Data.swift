//
//  Data.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import Foundation

class Data {
    
    public static let shared = Data()

    private var studentList = [Student]()
    
    private init() {
        studentList.append(Student("Moshe", "1","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Yossi", "2","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Eli", "3","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Lee", "4","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Amir", "5","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Kobi", "6","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Omer", "7","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Liat", "8","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Shira", "9","0505848888","Tel Aviv", "a"))
        studentList.append(Student("Dani", "10","0505848888","Tel Aviv", "a"))
    }
    
    func getStudentList() -> [Student]{
        return studentList
    }
    
    func setStudentList(_ list: [Student]) {
        studentList = list
    }
    
    func AddStudent(_ st: Student){
        studentList.append(st)
    }
    
}
