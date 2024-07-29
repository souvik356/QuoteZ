//
//  QuoteViewController.swift
//  QuoteZ
//
//  Created by M sai deepthi on 26/07/24.
//

import UIKit

class QuoteViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = QuoteViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel.title
        // Do any additional setup after loading the view.
    }
}

extension QuoteViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath)
        let quotes = viewModel.quotes[indexPath.row]
        cell.textLabel?.text = quotes
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byWordWrapping
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRow()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
