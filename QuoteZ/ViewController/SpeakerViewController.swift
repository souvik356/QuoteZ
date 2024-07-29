//
//  ViewController.swift
//  QuoteZ
//
//  Created by M sai deepthi on 26/07/24.
//

import UIKit

class SpeakerViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = SpeakerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.getSpeakerData()
    }
}

extension SpeakerViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell", for: indexPath)
        let speaker = viewModel.speaker(at: indexPath.row)
        // this will remove unnecessary constraints present inside the cell
        for subview in cell.contentView.subviews {
            subview.removeFromSuperview()
        }
        // Configure the image view
        let imageView = UIImageView(image: UIImage(named: speaker?.speakerImage ?? ""))
        imageView.frame = CGRect(x: 10, y: 10, width: 55, height: 55)
        imageView.setRounded()
        imageView.contentMode = .scaleAspectFill
        // Configure the label
        let label = UILabel(frame: CGRect(x: 80, y: 20, width: cell.contentView.frame.width - 90, height: 35))
        label.text = speaker?.speakerName
        // after configuring everything i.e. label and imageView will be added to cell
        cell.contentView.addSubview(imageView)
        cell.contentView.addSubview(label)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let quoteVc = storyBoard.instantiateViewController(identifier: "QuoteViewController") as! QuoteViewController
        let selectedCell = viewModel.speaker(at: indexPath.row)
        quoteVc.viewModel = QuoteViewModel(speakerData: selectedCell)
        navigationController?.pushViewController(quoteVc, animated: true)
    }
}
extension UIImageView {
    func setRounded() {
        let radius = CGRectGetWidth(self.frame) / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
