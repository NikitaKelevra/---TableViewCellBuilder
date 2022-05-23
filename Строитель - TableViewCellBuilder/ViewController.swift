//
//  ViewController.swift
//  Строитель - TableViewCellBuilder
//
//  Created by Сперанский Никита on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }
}


// MARK: -

//Здест мы должны сконфигурировать ячейки
private extension ViewController {
    //Этой функцией регестрируем все ячейки - инаяче tableView не увидит этих ячеек
    func registerCells() {
        tableView.register(UINib(nibName: String(describing: AvatarTableViewCell.self), bundle: nil),
                           forCellReuseIdentifier: String(describing: AvatarTableViewCell.self))
        
        tableView.register(UINib(nibName: String(describing: UserInfoTableViewCell.self), bundle: nil),
                           forCellReuseIdentifier: String(describing: UserInfoTableViewCell.self))
        
        tableView.register(UINib(nibName: String(describing: UserDetailsInfoTableViewCell.self), bundle: nil),
                           forCellReuseIdentifier: String(describing: UserDetailsInfoTableViewCell.self))
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
}
// MARK: - UITableViewDataSource - Реализовываем ячейки
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: AvatarTableViewCell.self)) as! AvatarTableViewCell
            
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UserInfoTableViewCell.self)) as! UserInfoTableViewCell
        
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UserDetailsInfoTableViewCell.self)) as! UserDetailsInfoTableViewCell
        
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: AvatarTableViewCell.self)) as! AvatarTableViewCell
        
        default:
             
        }
    }
    

    
    
}
