//
//  XIBViewController.swift
//  Lifecycle
//
//  Created by ibautista on 30/8/23.
//

import UIKit

class XIBViewController: UIViewController {
    
    // MARK: Outlets:
    
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Model:
    private let text: String
    
    // MARK: - Initializers:
    
    init(text: String) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
        print("🙄 XIBViewController INIT")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text  // el texto de nuestro label ahora es el texto pasado con el inicializador de la clase. 

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("❌ XIBViewController deinit")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
