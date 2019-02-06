//
//  ScrapFilterViewController.swift
//  tree
//
//  Created by Hyeontae on 05/02/2019.
//  Copyright © 2019 gardener. All rights reserved.
//

import UIKit

class ScrapFilterViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    private let cellIdentifier = "ScrapFilterTableViewCell"
    private var categories = ArticleCategory.allCases
//    private var tableViewContentOffsetY: CGFloat = 0
//    private var headerViewLarged = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetting()
//        headerView.layer.masksToBounds = true
        headerView.backgroundColor = UIColor.red
    }
    
    private func tableViewSetting() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ScrapFilterTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.separatorStyle = .none
    }
}

extension ScrapFilterViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
                as? ScrapFilterTableViewCell else {
            return UITableViewCell()
        }
        
        cell.titleLabel.text = categories[indexPath.row].capitalFirstCharactor()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let tappedCell = tableView.cellForRow(at: indexPath) as? ScrapFilterTableViewCell else { return }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}

extension ScrapFilterViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if !headerViewLarged && tableViewContentOffsetY < 0 {
//            // 커질때
//            UIView.animate(withDuration: 0.5,
//                           animations: { [weak self] in
//                            guard let self = self else { return }
////                            self.headerView.frame = CGRect(x: 0,
////                                                      y: 0,
////                                                      width: self.view.bounds.width,
////                                                      height: 70)
//                            self.headerView.frame.size.height = 70
//                            self.headerTitle.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
//                            self.headerTitle.frame = CGRect(x: 15,
//                                                            y: 17,
//                                                            width: 126,
//                                                            height: 34)
//                            self.tableView.frame = CGRect(x: 0,
//                                                          y: 70,
//                                                          width: self.view.bounds.width,
//                                                          height: self.view.bounds.height - 70)
//            })
//            headerViewLarged = true
//        }
//        if headerViewLarged && scrollView.contentOffset.y > 50 {
//            // 작아질때
//            UIView.animate(withDuration: 0.5,
//                           animations: { [weak self] in
//                            guard let self = self else { return }
////                            self.headerView.frame = CGRect(x: 0,
////                                                           y: 0,
////                                                           width: self.view.bounds.width,
////                                                           height: 30)
//                            self.headerView.frame.size.height = 30
//                            self.headerTitle.font = UIFont.systemFont(ofSize: 20, weight: .regular)
//                            self.headerTitle.frame = CGRect(x: 15,
//                                                            y: 13,
//                                                            width: 85,
//                                                            height: 24)
//                            self.tableView.frame = CGRect(x: 0,
//                                                          y: 30,
//                                                          width: self.view.bounds.width,
//                                                          height: self.view.bounds.height - 30)
//            })
//
//            headerViewLarged = false
//        }
//
//        tableViewContentOffsetY = scrollView.contentOffset.y
    }
}
