import UIKit
import Network

class ViewController: UIViewController {

    let networkMonitor = NWPathMonitor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        networkMonitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                print("Estás conectado a la red")
            } else {
                print("No estás conectado a la red")
            }
        }
        
        let queue = DispatchQueue(label: "Network connectivity")
            networkMonitor.start(queue: queue)
    }

}
