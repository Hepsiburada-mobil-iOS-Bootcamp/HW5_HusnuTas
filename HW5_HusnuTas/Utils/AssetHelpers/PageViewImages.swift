//
//  PageViewImages.swift
//  HW5_HusnuTas
//
//  Created by Hüsnü Taş on 24.10.2021.
//

import UIKit

enum PageViewImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case defaultSplashBackground = "defaultSplashBackground"
    case page1 = "page1"
    case page2 = "page2"
    case page3 = "page3"
    
}
