//
//  ViewController.swift
//  CustomViewWithXib
//
//  Created by Mac on 30/06/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var studentName:[String] = ["Online Learning","Education","Learn Visual","Learn Fast"]
    
    var idName:[String] = ["101","102","103","104"]
    
    var courseName:[String] = ["Online-Computer","SoftWare","8-12 Education","Computer"]
    
    var imageName = [UIImage(named: "E-commerce"),UIImage(named: "Software-Platforms"),UIImage(named: "Education"),UIImage(named: "Digital")]

    @IBOutlet weak var customTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customTableView.dataSource = self
        customTableView.delegate = self
        
        let uiNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.customTableView.register(uiNib, forCellReuseIdentifier: "customCell")
        
    }
    // MARK: Table View Method
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.customTableView.dequeueReusableCell(withIdentifier: "customCell")as! CustomTableViewCell
        cell.studentLabel.text = studentName[indexPath.row]
        cell.studentIdLabel.text = idName[indexPath.row]
        cell.studentCource.text = courseName[indexPath.row]
        cell.studentImage.image = imageName[indexPath.row]
        
          return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }

}

