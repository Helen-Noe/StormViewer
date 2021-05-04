//
//  ImageViewController.swift
//  StromViewer
//
//  Created by Thin Myat Noe on 4/5/21.
//

import Foundation
import UIKit

class ImageViewController: UIViewController{
	var imageName = ""
	
	override func viewDidLoad() {
//		print(imageName)
		view.backgroundColor = .white
		
		let bounds = UIScreen.main.bounds
		let width = bounds.size.width
		let height = bounds.size.height
		
		let image = UIImage(named: imageName)
		let imageView = UIImageView(image: image!)
		
		imageView.frame = CGRect(x: 0, y: height/2.5, width: width, height: 200)
		imageView.contentMode = .scaleAspectFill
		view.addSubview(imageView)
	}
}
