//
//  ChooseStyleViewController.swift
//  testHack
//
//  Created by PeterChen on 2015/5/16.
//  Copyright (c) 2015年 PeterChen. All rights reserved.
//

import UIKit

class ChooseStyleViewController: UIViewController, UIScrollViewDelegate {

    var pagingview: UIScrollView!
    var imgArr: NSMutableArray!
    var count:Int = 1
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var imgButton: UIButton!
    @IBOutlet weak var fruitlabel: UILabel!
    @IBOutlet weak var pageCon: UIPageControl!
    let image0 = UIImage(named: "1.png")
    let image1 = UIImage(named: "2.png")
    let image2 = UIImage(named: "3.png")
    
    @IBOutlet weak var rightbutton: UIButton!
    @IBOutlet weak var leftbutton: UIButton!
    func clickleftbutton(){
        count--
        if ( count == 0){
            count = 3
        }
        img.image = UIImage(named: "\(count).png")
        labbelchange()
    }
    func clickrightbutton(){
        count++
        if( count > 3){
            count = 1
        }
        img.image = UIImage(named: "\(count).png")
        labbelchange()
    }
    func labbelchange(){
        if (count == 1){
            fruitlabel.text = "梨子型"
            fruitlabel.textAlignment = NSTextAlignment.Center
        }else if (count == 2){
            fruitlabel.text = "蘋果型"
            fruitlabel.textAlignment = NSTextAlignment.Center
        }else {
            fruitlabel.text = "香蕉型"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        leftbutton.addTarget(self, action: "clickleftbutton", forControlEvents: UIControlEvents.TouchUpInside)
        rightbutton.addTarget(self, action: "clickrightbutton", forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
//        pagingview = UIScrollView(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
//        pagingview.contentSize = CGSizeMake(self.view.frame.width*4, self.view.frame.height)
//        pagingview.backgroundColor = UIColor.grayColor()
//        
//        for i in 1...4 {
//            var view = UIView(frame: CGRectMake(40 + self.view.frame.width * CGFloat(i-1), 40, 200, 200))
//            view.backgroundColor = UIColor.brownColor()
//            pagingview.addSubview(view)
//        }
        
//        pagingview.delegate = self
//        
//        self.view.addSubview(pagingview)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
