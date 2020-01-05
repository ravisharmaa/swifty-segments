import UIKit

class ViewController: UIViewController {
    
    //MARK:- Adding Views
    
    lazy var feedListTable: UITableView = {
        
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupTableView()
    }
    
    func setupTableView(){
        
        view.addSubview(feedListTable)
        
        feedListTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        feedListTable.register(SegmentedControlHeaderView.self, forHeaderFooterViewReuseIdentifier: "segmentHeader")
        
        NSLayoutConstraint.activate([
            feedListTable.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            feedListTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            feedListTable.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            feedListTable.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "segmentHeader") as! SegmentedControlHeaderView
        
        return view
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Hello"
        
        return cell
    }
    
    
}

