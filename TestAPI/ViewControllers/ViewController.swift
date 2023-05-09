

import UIKit



final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchEmployee()
    }
    
    private func fetchEmployee() {
        URLSession.shared.dataTask(with: Link.employeeURl.url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let decoder = JSONDecoder()
                let employee = try decoder.decode(Employee.self, from: data)
                print(employee)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
        
    }


}

