//
//  ClothSuggestController.swift
//  testHack
//
//  Created by PeterChen on 2015/5/17.
//  Copyright (c) 2015年 PeterChen. All rights reserved.
//

import UIKit

class ClothSuggestController: UIViewController {
    @IBOutlet weak var cloth: UIImageView!
    @IBOutlet weak var suit: UIImageView!
    @IBOutlet weak var pant: UIImageView!
    @IBOutlet weak var shoe: UIImageView!
    @IBOutlet weak var other: UIImageView!
    
    @IBOutlet weak var suitlabel: UILabel!
    @IBOutlet weak var pantlabel: UILabel!
    @IBOutlet weak var shoelabel: UILabel!
    @IBOutlet weak var otherlabel: UILabel!
    
    @IBOutlet weak var clothtext: UILabel!
    @IBOutlet weak var suittext: UILabel!
    @IBOutlet weak var othertext: UILabel!
    @IBOutlet weak var panttext: UILabel!
    @IBOutlet weak var shoetext: UILabel!
    @IBOutlet weak var videobutton: UIButton!
    
    var count:Int = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var leftswipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightswipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        leftswipe.direction = .Left
        rightswipe.direction = .Right
        
        view.addGestureRecognizer(leftswipe)
        view.addGestureRecognizer(rightswipe)
        videobutton.addTarget(self, action: "buttonclick", forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func facetime(phoneNumber:String) {
        if let facetimeURL:NSURL = NSURL(string: "facetime://\(phoneNumber)") {
            let application:UIApplication = UIApplication.sharedApplication()
            if (application.canOpenURL(facetimeURL)) {
                application.openURL(facetimeURL);
            }
        }
    }
    func buttonclick(){
        facetime("peterchen302@gmail.com")
    }
    
    func handleSwipes(sender:UISwipeGestureRecognizer){
        if (sender.direction == .Left){
            clothtext.text = "深色、含亮色圖案"
            panttext.text = "長版、淺色、貼身"
            shoetext.text = "深棕色"
            othertext.text = "手拿式、亮色系"
            suittext.text = "淺色、牛仔布料"
            pantlabel.text = "牛仔褲"
            shoelabel.text = "西裝鞋"
            otherlabel.text = "包包"
            suitlabel.text = "襯衫"
            shoe.image = UIImage(named: "鞋子1.png")
            pant.image = UIImage(named: "褲子1.png")
            other.image = UIImage(named: "包包1.png")
            cloth.image = UIImage(named: "上衣1.png")
            suit.image = UIImage(named: "襯衫1.png")

        }
        if (sender.direction == .Right){
            panttext.text = "長版、貼身、淺綠色系"
            clothtext.text = "深綠色、貼身"
            shoetext.text = "米色系"
            othertext.text = "皮帶式、深色系"
            suittext.text = "西裝式、粉色系"
            suitlabel.text = "外套"
            otherlabel.text = "手錶"
            shoelabel.text = "休閒鞋"
            pantlabel.text = "褲子"
            shoe.image = UIImage(named: "鞋子2.png")
            pant.image = UIImage(named: "褲子2.png")
            other.image = UIImage(named: "手錶2.png")
            suit.image = UIImage(named: "外套2.png")
            cloth.image = UIImage(named: "上衣.png")

        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
