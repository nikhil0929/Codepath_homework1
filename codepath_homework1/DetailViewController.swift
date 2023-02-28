//
//  DetailViewController.swift
//  codepath_homework1
//
//  Created by Nikhil Aggarwal on 2/27/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var context: Context?

    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var contextTitle: UILabel!
    @IBOutlet weak var contextImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        if let context = context {
//            print(context.title)
//        }
        
        desc.lineBreakMode = .byWordWrapping
        desc.numberOfLines = 0
        
        desc.text = context?.description
        contextTitle.text = context?.title
        contextImage.image = context?.image
        
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
