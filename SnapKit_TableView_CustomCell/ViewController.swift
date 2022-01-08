//
//  ViewController.swift
//  SnapKit_TableView_CustomCell
//
//  Created by Kirill Drozdov on 08.01.2022.
//

import UIKit




class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let sedondCellIDF = "LeftChatCellIDF"
    let firstCellIDF = "RightChatCellIDF"
    let arrayName = ["Кирилл","Вася","Даня","Антон"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CreateUI()
    }
    func CreateUI() -> Void {
        
        let ChatTable:UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), style: UITableView.Style.plain)
        self.view.addSubview(ChatTable)
        ChatTable.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        ChatTable.delegate = self
        ChatTable.dataSource = self
        ChatTable.register(SecondCell().classForCoder, forCellReuseIdentifier:firstCellIDF)
        ChatTable.register(FirstCell().classForCoder, forCellReuseIdentifier: sedondCellIDF)
        ChatTable.estimatedRowHeight = 80
        ChatTable.rowHeight = UITableView.automaticDimension
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: firstCellIDF) as! SecondCell
            cell.ConfigCellWithContain(arrayName[indexPath.row])
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: sedondCellIDF) as! FirstCell
            cell.ConfigCellWithContain(arrayName[indexPath.row])
            return cell
        }
    }
   

}
