//
//  CalculusViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/9/21.
//

import UIKit

class CalculusViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var calculusScrollView: UIScrollView!
    @IBOutlet weak var calculusImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculusScrollView.maximumZoomScale = 4
        calculusScrollView.minimumZoomScale = 1
        calculusScrollView.delegate = self

        // Do any additional setup after loading the view.
    }
    
}

extension CalculusViewController : UIScrollViewAccessibilityDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return calculusImageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        if calculusScrollView.zoomScale > 1 {
            if let image = calculusImageView.image {
                let ratioW = calculusImageView.frame.width / image.size.width
                let ratioH = calculusImageView.frame.height / image.size.height
                
                let ratio = ratioW < ratioH ? ratioW : ratioH
                let newWidth = image.size.width * ratio
                let newHeight = image.size.height * ratio
                
                let conditionLeft = newWidth * scrollView.zoomScale > calculusImageView.frame.width
                
                let left = 0.5 * (conditionLeft ? newWidth - calculusImageView.frame.width : (calculusScrollView.frame.width - calculusScrollView.contentSize.width))
                
                let conditionTop = newHeight * calculusScrollView.zoomScale > calculusImageView.frame.height
                
                let top = 0.5 * (conditionTop ? newHeight - calculusImageView.frame.height : (calculusScrollView.frame.height - calculusScrollView.contentSize.height))
                
                calculusScrollView.contentInset = UIEdgeInsets(top: top, left: left, bottom: top, right: left)
            }
        } else {
            calculusScrollView.contentInset = .zero
        }
    }
}



/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
