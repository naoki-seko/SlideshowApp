//
//  ViewController.swift
//  SlideshowApp
//
//  Created by kimilabo on 2018/02/26.
//  Copyright © 2018年 naoki.seko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let photos = ["IMG_9364.JPG","IMG_9365.JPG","IMG_9366.JPG","IMG_9367.JPG"]
    
    //自動で写真を表示するためのタイマー
    var timer: Timer!
    //表示する番号用の数字
    var dispImageNo = 0
    
    //タイマー用の関数
    @objc func updateTimer(timer: Timer) {
        print("onTimer")
        //表示している画像の番号から名前を取り出し
        let name = photos[dispImageNo]
        //画像の読み込み
        let myImage: UIImage = UIImage(named: name)!
        //ImageViewに読み込んだ画像をセット
        myImageView.image = myImage
        
        //表示している画像の番号を１増やす
        dispImageNo += 1
        //範囲外の場合最初か最後の画像を表示
        if dispImageNo < 0 {
            dispImageNo = 3
        }
        if dispImageNo > 3 {
            dispImageNo = 0
        }
    }
   
    @IBAction func nextButton(_ sender: Any) {
       
        
        if self.timer == nil{
            if dispImageNo == 3 {
                dispImageNo = 0
            }else{
            dispImageNo += 1
            }
                print("nextButton")
            let name = photos[dispImageNo]
            //画像の読み込み
            let myImage: UIImage = UIImage(named: name)!
            //ImageViewに読み込んだ画像をセット
            myImageView.image = myImage
        }
        
    }
    @IBAction func backButton(_ sender: Any) {
        if self.timer == nil{
            if dispImageNo == 0 {
                dispImageNo = 3
            }else{
                dispImageNo -= 1
            }
            print("backButton")
            let name = photos[dispImageNo]
            //画像の読み込み
            let myImage: UIImage = UIImage(named: name)!
            //ImageViewに読み込んだ画像をセット
            myImageView.image = myImage
        }
    }
    //再生、停止ボタンを押したときの動作
    @IBAction func startStopButton(_ sender: Any) {
        //再生
        if self.timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
        else if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil
        }
        
    
        
        
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func onTapView(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //表示している画像の番号から名前を取り出し
        let name = photos[dispImageNo]
        //画像の読み込み
        let myImage: UIImage = UIImage(named: name)!
        //ImageViewに読み込んだ画像をセット
        myImageView.image = myImage

        // Do any additional setup after loading the view, typically from a nib.
       
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //セグエ
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

