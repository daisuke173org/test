import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var 記入: UITextField!
    @IBOutlet weak var 表示: UILabel!
 
    @IBOutlet weak var 戻る: UIButton!
 
    var testText : String = "なにがあった？"
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        記入.delegate = self
        
        userDefaults.register(defaults: [ "DataStore" : "なにがあった？"])
        
        表示.text = readData()
        
        
    }
    func 記入ShouldReturn(_ 記入: UITextField) -> Bool{
        testText = 記入.text!
        表示.text = testText
        
        記入.resignFirstResponder()
        
        saveData(str: testText)
        
        return true
    }
    func saveData(str: String) {
    
        userDefaults.set(str, forKey: "DataStore")
    
    }
    func readData() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults.object(forKey: "DataStore") as! String
 
        return str
    }
    
    
    @IBAction func 戻るtapped(_ sender: Any) {
        
        userDefaults.removeObject(forKey: "DataStore")
        
        let str: String = userDefaults.object(forKey: "DataStore")as! String
        
        表示.text = str
        
    }
    
}

