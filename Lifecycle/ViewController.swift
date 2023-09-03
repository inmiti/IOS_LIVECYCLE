//
//  ViewController.swift
//  Lifecycle
//
//  Created by ibautista on 29/8/23.
//

import UIKit

class ViewController: UIViewController {
    // Mark: - Inicializers
    init() {                                    // otro tipo inicializador xibs
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {          // inicializador para Storyboards
        super.init(coder: coder)
        print("🫣ViewControler init")
    }
    
 // Mark: - Lifecycle
    
    override func loadView() {
        super.loadView()
        print("😒 ViewController loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😏 ViewController viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("🤭 ViewController vieWillAppear")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("🤗 ViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("🙀 ViewController viewWillDisappear")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("😿 ViewController viewDidDisappear")
    }
    
    deinit {
        print("😡❌ ViewController deinit")
    }
    
    // MARK: - Actions
    @IBAction func didTapButton(_ sender: Any) {
        let viewController = XIBViewController(text: "👋🏼 hellooo!!!")       //Inicializar el viewcontroller de ese xib, con inic, vacio.
        navigationController?.show(viewController, sender: nil)       // Muestra la vista a la queremos navegar.
        
    }
    
}





