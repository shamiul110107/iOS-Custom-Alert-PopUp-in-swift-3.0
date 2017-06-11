
import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DelegateManager {

    let delegateManager = CustomAlertView()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegateManager.delegate = self
    }
 
     // implement delegate method
    func editLabelOnFirstView() {
        
       self.view.alpha = 1.0
       self.tableView.isUserInteractionEnabled = true
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath) as! CustomCell
        
        if (indexPath.row % 2 == 0) {
            cell.carImage.image = UIImage(named :"micrak14.jpg")

        } else {
            cell.carImage.image = UIImage(named :"pulsar.jpg")

        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.tableView.isUserInteractionEnabled = false
        
        if(indexPath.row%2 == 0) {
            
            self.view.alpha = 0.6
            self.view.addSubview(delegateManager.getCustomAlertForMultipleCar(view: self.view))

        } else {
            
            self.view.alpha = 0.6
            self.view.addSubview(delegateManager.getCustomAlert(view: self.view))

        }
    }
}
