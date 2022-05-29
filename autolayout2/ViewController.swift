//
//  ViewController.swift
//  autolayout2
//
//  Created by 김대연 on 2022/05/26.
//

import UIKit



class ViewController: UIViewController {
    
   
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
    let contentArray = [
    "aafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadfaafsdfafadfafafadf" , "b" ,"c"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 셀 리소스 파일 가져오기
        
        let myTableViewCellNib = UINib(nibName: String(describing: MyTableViewCell.self), bundle: nil)
        // 셀에 가져온 리소스 등록
        self.myTableView.register(myTableViewCellNib, forCellReuseIdentifier: "myTableViewCell")
        // 셀의 높이 정하기
        self.myTableView.rowHeight = UITableView.automaticDimension
        // 기본 높이 정하기
        self.myTableView.estimatedRowHeight = 120
        //아주 중요 델리게이트 패턴이므로 연결해줘야함
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        print("contentArray : \(contentArray.count)")
    }
   


}

extension ViewController: UITableViewDelegate{
    
}
extension ViewController: UITableViewDataSource{
    // 테이블 뷰 셀의 갯수 nuberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentArray.count
    }
// 각 셓에 대한 설정
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = myTableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as!
    MyTableViewCell
    
    cell.userContentLable.text = contentArray[indexPath.row]
    
    return cell
}

    
}
