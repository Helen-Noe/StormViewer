//
//  StormViewerVC.swift
//  StromViewer
//
//  Created by Thin Myat Noe on 12/4/21.
//

import Foundation
import UIKit

class StromViewerVC: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title  = "Strom Viewer"
		view.backgroundColor = .white
		let layout = view.layoutMarginsGuide
		
		
		let textLabel = UILabel()
		textLabel.text = "Hello"
//		textLabel.textColor = .red
		view.addSubview(textLabel)
		textLabel.translatesAutoresizingMaskIntoConstraints = false
		textLabel.topAnchor.constraint(equalTo: layout.topAnchor).isActive = true
		textLabel.leadingAnchor.constraint(equalTo: layout.leadingAnchor).isActive = true
	}
}
