//: Playground - noun: a place where people can play

import UIKit

// model
class Student {
    
    var id : Int?
    var name : String?
    var age : Int?
    var dateOfBirth : String?
    
    init(id: Int, name: String, age: Int, dateOfBirth: String) {
        
        self.id = id;
        self.age = age;
        self.name = name
        self.dateOfBirth = dateOfBirth
        
    }
    
}

protocol StudentDAO {
    func getAllStudent() -> [Student]
}


class StudentDAOImplemntation : StudentDAO {
    func getAllStudent() -> [Student] {
        
        let s1 = Student(id: 10, name: "Saleh", age: 10, dateOfBirth: "");
        
        let s2 = Student(id: 10, name: "Mohammed", age: 10, dateOfBirth: "");
        
        
        return [s1, s2]
    }
}





// client
let dao : StudentDAO = StudentDAOImplemntation()
dao.getAllStudent()






