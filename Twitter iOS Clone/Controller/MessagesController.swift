//
//  MessagesController.swift
//  Twitter iOS Clone
//
//  Created by Henrique Silva on 14/06/21.
//

import UIKit

class MessagesController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
