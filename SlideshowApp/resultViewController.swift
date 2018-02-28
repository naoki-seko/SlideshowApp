//
//  resultViewController.swift
//  SlideshowApp
//
//  Created by kimilabo on 2018/02/28.
//  Copyright © 2018年 naoki.seko. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    
    var num: Int = 0
    
    @IBOutlet weak var nextView: UIImageView!
    
    let photos = ["IMG_9364.JPG","IMG_9365.JPG","IMG_9366.JPG","IMG_9367.JPG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //画像を表示する
        let name = photos[num]
        let nextImage: UIImage = UIImage(named: name)!
        nextView.image = nextImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
