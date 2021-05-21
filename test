test
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttoncat: UIButton!
    @IBOutlet weak var buttondog: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text="どっち?"
        
        buttoncat.setTitle("🐱",for:.normal)
        buttondog.setTitle("🐶",for:.normal)
        
        let buttonSize=UIFont.systemFont(ofSize:60)
        
        buttoncat.titleLabel?.font=buttonSize
        buttondog.titleLabel?.font=buttonSize
    }

    @IBAction func tapcat(_ sender: Any) {
        label.text="nya-nya-!"
        }
    
    @IBAction func tapdog(_ sender: Any) {
        label.text="wanwan!"
    }
    
}
