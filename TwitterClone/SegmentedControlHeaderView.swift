import UIKit

class SegmentedControlHeaderView: UITableViewHeaderFooterView {
    
    lazy var customSegmentControl: UISegmentedControl = {
        
        let itemsForSegmentedControl: [String] = ["Tweets","Tweets & Replies", "Media", "Likes"]
        
        let segmentControl = UISegmentedControl(items:itemsForSegmentedControl)
        
        segmentControl.selectedSegmentIndex = 0
        
        
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        
        
        return segmentControl
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        contentView.addSubview(customSegmentControl)
        
        NSLayoutConstraint.activate([
            customSegmentControl.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6),
            customSegmentControl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            customSegmentControl.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6),
            customSegmentControl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
        ])
    }
    
    
    
    
    
}
