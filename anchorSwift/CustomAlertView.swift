
import UIKit
@objc protocol DelegateManager {
    
    func editLabelOnFirstView()
}

class CustomAlertView: UIView {

    var parentView = UIView()
    var messageLabel = UILabel()
    var cancelBtn = UIButton()
    var okBtn = UIButton()
    var seperatorView = UIView()
    
    weak var delegate: DelegateManager?

    func getCustomAlert(view: UIView) -> UIView {
        
         parentView = UIView()
         messageLabel = UILabel()
         cancelBtn = UIButton()
         okBtn = UIButton()
         seperatorView = UIView()
        
        parentView.translatesAutoresizingMaskIntoConstraints = false
        parentView.backgroundColor = UIColor.red
        view.addSubview(parentView)
        
        parentView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        parentView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        parentView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        parentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let parentViewMargin = parentView.layoutMarginsGuide
        
        seperatorView.backgroundColor = UIColor.lightGray
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        parentView.addSubview(seperatorView)
        
        seperatorView.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        seperatorView.centerXAnchor.constraint(equalTo: parentViewMargin.centerXAnchor).isActive = true
        seperatorView.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
        seperatorView.heightAnchor.constraint(equalTo: parentViewMargin.heightAnchor , multiplier:0.15).isActive = true
        
        cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        cancelBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        cancelBtn.setTitle("CANCEL", for: UIControlState.normal)
        cancelBtn.backgroundColor = UIColor.white
        cancelBtn.addTarget(self, action:#selector(cancelBtnEventListener), for: .touchUpInside)
        parentView.addSubview(cancelBtn)
        
        cancelBtn.leadingAnchor.constraint(equalTo: parentViewMargin.leadingAnchor).isActive = true
        cancelBtn.trailingAnchor.constraint(equalTo: seperatorView.leadingAnchor).isActive = true
        cancelBtn.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        cancelBtn.heightAnchor.constraint(equalTo: parentViewMargin.heightAnchor , multiplier: 0.15).isActive = true
        
        okBtn.translatesAutoresizingMaskIntoConstraints = false
        okBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        okBtn.setTitle("OK", for: UIControlState.normal)
        okBtn.backgroundColor = UIColor.white
        okBtn.addTarget(self, action:#selector(okBtnEventListener), for: UIControlEvents.touchUpInside)
        parentView.addSubview(okBtn)
        
        okBtn.leadingAnchor.constraint(equalTo: seperatorView.trailingAnchor).isActive = true
        okBtn.trailingAnchor.constraint(equalTo: parentViewMargin.trailingAnchor).isActive = true
        okBtn.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        okBtn.heightAnchor.constraint(equalTo: parentViewMargin.heightAnchor , multiplier: 0.15).isActive = true
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.backgroundColor = UIColor.clear
        messageLabel.textColor = UIColor.white
        messageLabel.numberOfLines = 0
        messageLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        messageLabel.adjustsFontSizeToFitWidth = true
        messageLabel.textAlignment = NSTextAlignment.center
        messageLabel.text = "This is text?"
        
        parentView.addSubview(messageLabel)
        
        messageLabel.leadingAnchor.constraint(equalTo: parentViewMargin.leadingAnchor).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: parentViewMargin.trailingAnchor).isActive = true
        messageLabel.topAnchor.constraint(equalTo: parentViewMargin.topAnchor).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        
        return parentView

    }
    
    
    func getCustomAlertForMultipleCar(view: UIView) -> UIView {
        
        parentView = UIView()
        messageLabel = UILabel()
        cancelBtn = UIButton()
        okBtn = UIButton()
        seperatorView = UIView()
        
        parentView.translatesAutoresizingMaskIntoConstraints = false
        parentView.backgroundColor = UIColor.white
        view.addSubview(parentView)
        
        parentView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85).isActive = true
        parentView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        parentView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        parentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let parentViewMargin = parentView.layoutMarginsGuide
        
        seperatorView.backgroundColor = UIColor.lightGray
        seperatorView.translatesAutoresizingMaskIntoConstraints = false
        parentView.addSubview(seperatorView)
        
        seperatorView.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        seperatorView.centerXAnchor.constraint(equalTo: parentViewMargin.centerXAnchor).isActive = true
        seperatorView.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
        seperatorView.heightAnchor.constraint(equalTo: parentViewMargin.heightAnchor , multiplier:0.20).isActive = true
        
        cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        var image = UIImage(named: "eur_new")!
        cancelBtn.setBackgroundImage(image, for: UIControlState.normal)
        cancelBtn.backgroundColor = UIColor.clear
        cancelBtn.addTarget(self, action:#selector(cancelBtnEventListener), for: .touchUpInside)
        parentView.addSubview(cancelBtn)
        
        cancelBtn.leadingAnchor.constraint(equalTo: parentViewMargin.leadingAnchor).isActive = true
        cancelBtn.trailingAnchor.constraint(equalTo: seperatorView.leadingAnchor).isActive = true
        cancelBtn.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        cancelBtn.heightAnchor.constraint(equalTo: parentViewMargin.heightAnchor , multiplier: 0.20).isActive = true
        
        okBtn.translatesAutoresizingMaskIntoConstraints = false
        image = UIImage(named: "rus_new")!
        okBtn.setBackgroundImage(image, for: UIControlState.normal)
        okBtn.backgroundColor = UIColor.clear
        okBtn.addTarget(self, action:#selector(okBtnEventListener), for: UIControlEvents.touchUpInside)
        parentView.addSubview(okBtn)
        
        okBtn.leadingAnchor.constraint(equalTo: seperatorView.trailingAnchor).isActive = true
        okBtn.trailingAnchor.constraint(equalTo: parentViewMargin.trailingAnchor).isActive = true
        okBtn.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        okBtn.heightAnchor.constraint(equalTo: parentViewMargin.heightAnchor , multiplier: 0.15).isActive = true
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.backgroundColor = UIColor.clear
        messageLabel.textColor = UIColor.black
        messageLabel.numberOfLines = 0
        messageLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        messageLabel.adjustsFontSizeToFitWidth = true
        messageLabel.textAlignment = NSTextAlignment.center
        messageLabel.text = "Do You Want To Download This Car?"
        parentView.addSubview(messageLabel)
        
        messageLabel.leadingAnchor.constraint(equalTo: parentViewMargin.leadingAnchor).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: parentViewMargin.trailingAnchor).isActive = true
        messageLabel.topAnchor.constraint(equalTo: parentViewMargin.topAnchor).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: parentViewMargin.bottomAnchor).isActive = true
        
        return self
        
    }
    
    public func cancelBtnEventListener() {
        
         parentView.removeFromSuperview()
         delegate?.editLabelOnFirstView()

    }
    
    public func okBtnEventListener() {
        
        parentView.removeFromSuperview()
        delegate?.editLabelOnFirstView()

    }
   
}
