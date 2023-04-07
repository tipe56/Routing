
import UIKit

class DemoViewController: UIViewController {
    
    private var loginButton = UIButton()
    
    @IBOutlet private var screenColorMainViewButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        view.backgroundColor = .systemGray3
        screenColorMainViewButton.setTitle("String", for: .normal)
        screenColorMainViewButton.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        
    }
    
    private func initialSetup() {
          // basic setup
          view.backgroundColor = .white
          navigationItem.title = "UIButton"
            
          // button customization
          loginButton.backgroundColor = UIColor.gray
          loginButton.setTitle("Login", for: .normal)
          loginButton.setTitleColor(.white, for: .normal)
          loginButton.layer.cornerRadius = 8
          loginButton.clipsToBounds = true
          loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 50, weight: .semibold)
            
            
          // adding the constraints to button
          view.addSubview(loginButton)
          loginButton.translatesAutoresizingMaskIntoConstraints = false
          loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
          loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
          loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
          loginButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
       }
    
    
    
    //MARK: - Public
    
    public func configure (with shouldDismissAnimated: Bool) {
        self.shouldDismissAnimated = shouldDismissAnimated
    }
    
    
    
    // MARK: - Actions
    
    @IBAction func didTapDismissButton() {
        dismiss(animated: shouldDismissAnimated)
    }
    
    
    @IBAction func changeBackGroundColor() {
        view.backgroundColor = .systemYellow
    }
    
    
    @IBAction func didTapscreenColorMainViewButton() {
        color.setupColor(color: UIColor.systemPink)
    }
    
    
    // MARK: - Private
    
    private var shouldDismissAnimated = true

    
    
    // MARK: - Private func
    
}
