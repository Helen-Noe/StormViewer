//
//  StormViewerVC.swift
//  StromViewer
//
//  Created by Thin Myat Noe on 12/4/21.
//

import Foundation
import UIKit

class StromViewerVC: UIViewController{
	
	let tableView = UITableView()
	var safeArea: UILayoutGuide!
	var picturesName = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		title  = "Strom Viewer"
		
		view.backgroundColor = .white
		safeArea = view.layoutMarginsGuide
		
		let fm = FileManager.default
		let path = Bundle.main.resourcePath!
		let items = try! fm.contentsOfDirectory(atPath: path)
		
		for item in items{
			if item.hasPrefix("nssl"){
				picturesName.append(item)
			}
		}
//		print(picturesName)
		tableView.dataSource = self
		
		tableView.tableFooterView = UIView()
		setupTableView()
	}
	
	func setupTableView(){
		view.addSubview(tableView)
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
	}
}

extension StromViewerVC: UITableViewDelegate,UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
	return picturesName.count
  }
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
	cell.textLabel?.text = picturesName[indexPath.row]
	return cell
  }
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		<#code#>
	}
}
