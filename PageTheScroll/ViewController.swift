//
//  ViewController.swift
//  PageTheScroll
//
//  Created by David Martin on 22/10/2016.
//  Copyright © 2016 codeworxapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    // Create an array for images.
    var images = [UIImageView]()
    
    //Store content size for scrollview overlap.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }

    override func viewDidAppear(_ animated: Bool) {
        //Store content size for scrollview image spacing.
        var contentWidth: CGFloat = 0.0
        
        print("Scrollview width: \(scrollView.frame.size.width)")
        
        let scrollWidth = scrollView.frame.size.width
        
        // Create image files here using a 'for loop'.
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            //Sets frame on image after being added to scrollview.
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

