//
//  ChemistryViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/10/21.
//

import UIKit

class ChemistryViewController: UIViewController {

    @IBOutlet weak var chemistryScrollView: UIScrollView!
    @IBOutlet weak var chemistryImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chemistryScrollView.maximumZoomScale = 4
        chemistryScrollView.minimumZoomScale = 1
        chemistryScrollView.delegate = self

        // Do any additional setup after loading the view.
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

extension ChemistryViewController : UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return chemistryImageView
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        if chemistryScrollView.zoomScale > 1 {
            if let image = chemistryImageView.image {
                let ratioW = chemistryImageView.frame.width / image.size.width
                let ratioH = chemistryImageView.frame.height / image.size.height
                
                let ratio = ratioW < ratioH ? ratioW : ratioH
                let newWidth = image.size.width * ratio
                let newHeight = image.size.height * ratio
                
                let conditionLeft = newWidth * scrollView.zoomScale > chemistryImageView.frame.width
                
                let left = 0.5 * (conditionLeft ? newWidth - chemistryImageView.frame.width : (chemistryScrollView.frame.width - chemistryScrollView.contentSize.width))
                
                let conditionTop = newHeight * chemistryScrollView.zoomScale > chemistryImageView.frame.height
                
                let top = 0.5 * (conditionTop ? newHeight - chemistryImageView.frame.height : (chemistryScrollView.frame.height - chemistryScrollView.contentSize.height))
                
                chemistryScrollView.contentInset = UIEdgeInsets(top: top, left: left, bottom: top, right: left)
            }
        } else {
            chemistryScrollView.contentInset = .zero
        }
    }
}
