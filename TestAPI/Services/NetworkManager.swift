
import Foundation

enum Link {
    case employeeURl
    
    var url: URL {
        switch self {
        case .employeeURl:
            return URL(string: "https://dummy.restapiexample.com/api/v1/employees")!
        }
    }
}

final class NetworkManager {
    static let shared = NetworkManager()
    private init() { }
}
