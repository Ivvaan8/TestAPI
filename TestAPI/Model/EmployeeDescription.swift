

import Foundation


struct EmployeeDescription: Decodable {
    let id: Int
    let employee_name: String
    let employee_salary: Int
    let employee_age: Int
    let profile_image: String
    
}

struct Employee: Decodable {
    let status: String
    let data: [EmployeeDescription]
    let message: String
}
