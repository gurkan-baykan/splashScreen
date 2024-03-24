//
//  SplashScreenController.swift
//  LiveMobile
//
//  Created by Gürkan Baykan on 7.03.2024.
//

import Foundation
import UIKit

class SplashScreenController: UIViewController {
  var message:String = "";
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view?.backgroundColor = UIColor.white
    let image = UIImage(named: "splashImage")
    let imageView = UIImageView(image:image!)
    imageView.frame = CGRect(x:self.view.bounds.size.width/2-70, y: self.view.bounds.size.height/2 - 130,width: 160,height: 100)
    self.view.addSubview(imageView);
    let title = UILabel(frame: CGRect(x:self.view.bounds.size.width/2, y: self.view.bounds.size.height/2 + 50, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
    title.textColor = UIColor.black
    title.font.withSize(35)
    title.text = message
    title.textAlignment = .center
    title.center = self.view.center
     self.view.addSubview(title)
  }
}
