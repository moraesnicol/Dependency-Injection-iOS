//
//  ViewController.swift
//  Dependency-Injection-iOS
//
//  Created by Gabriel on 02/09/21.
//

import APIkit
import MyAppUIkIT
import UIKit


extension APICaller: DataFetchable {}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnyButton()
    }
     
    func setupAnyButton() {
        let anyButton = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(anyButton)
        anyButton.backgroundColor = .systemBlue
        anyButton.setTitle("Tap me", for: .normal)
        anyButton.center = view.center
        anyButton.setTitleColor(.purple, for: .normal)
        anyButton.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)
    }
    
    @objc private func didTapButton() {
        let vc = CoursesViewController(dataFetchable: APICaller.shared)
        present(vc, animated: true)
        
    }

}

