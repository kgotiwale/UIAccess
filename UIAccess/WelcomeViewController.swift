//
//  OnBoard1ViewController.swift
//  UIAccess
//
//  Created by Kshitij Gotiwale on 2/20/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var holderView: UIView!
    
    let scrollView = UIScrollView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure()
    }
    
    
    
    
    
    private func configure(){
        // set up scrollview
        
        scrollView.frame = holderView.bounds
        holderView.addSubview(scrollView)
        
        
        let titles = ["Categories", "Intuative Search", "Bookmark and Saved"]
        let titles2 = ["Our Home Screen puts what you need at the forefront of your mobile phone", "Our search feature allows you to search through documents more easily than ever", "You can save any document for easy access and also bookmark pages within the document for easy reference"]
        for x in 0..<3 {
            let pageView = UIView(frame: CGRect(x: CGFloat(x) * holderView.frame.size.width, y: 0, width: holderView.frame.size.width, height: holderView.frame.size.height))
            scrollView.addSubview(pageView)
            
            //Title, image and button
            
            let label = UILabel(frame: CGRect(x: -10, y: pageView.frame.size.height-370, width: pageView.frame.size.width-20, height: 120))
            let label2 = UILabel(frame: CGRect(x: 35, y: pageView.frame.size.height-350, width: 300, height: 250))
            let imageView = UIImageView(frame: CGRect(x: -5, y: -30, width: pageView.frame.size.width-20, height: pageView.frame.size.height-140-70-20))
            let button = UIButton(frame: CGRect(x: 55, y: pageView.frame.size.height-170, width: pageView.frame.size.width-150, height: 50))
            
            
            label.textAlignment = .center
            label.font = UIFont.boldSystemFont(ofSize: 25.0)
            pageView.addSubview(label)
            label.text = titles[x]
            
            label2.textAlignment = .center
            label2.contentMode = .scaleToFill
            label2.numberOfLines = 4
            pageView.addSubview(label2)
            label2.text = titles2 [x]
            
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: "Welcome_\(x)")
            pageView.addSubview(imageView)
            
            button.setTitleColor(UIColor(red: 180/255, green: 210/255, blue: 124/255, alpha: 1.0), for: .normal)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.layer.cornerRadius = 25
            button.setTitle("Continue", for: .normal)
            if x  == 2 {
                button.setTitle("You're all set!", for: .normal)
            }
            button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
            button.tag = x+1
            pageView.addSubview(button)
        }
        
        scrollView.contentSize = CGSize(width: holderView.frame.size.width*3 , height: 0)
        scrollView.isPagingEnabled  = true
        
    }
    
    @objc func didTapButton(_ button: UIButton) {
        guard button.tag < 3 else {
            //  dismiss
            Core.shared.setIsNotNewUser()
            dismiss(animated:  true, completion: nil)
            return
        }
        // scroll to next
        scrollView.setContentOffset(CGPoint(x: holderView.frame.size.width * CGFloat(button.tag), y: 0), animated: true)
    }
    
}
