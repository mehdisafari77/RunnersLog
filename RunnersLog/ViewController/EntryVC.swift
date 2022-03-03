//
//  EntryVC.swift
//  RunnersLog
//
//  Created by Ivan Ramirez on 1/26/22.
//

import UIKit


class EntryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var randomButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var sortButton: UIButton!
    @IBOutlet weak var myTableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

// toDetailSegue


    //MARK: - Table View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EntryController.shared.fetchedEntries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as? EntryCell else {
            return UITableViewCell()
        }
        
        let entry = EntryController.shared.fetchedEntries[indexPath.row]


        return UITableViewCell()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


    }


    @IBAction func sortButtonTapped(_ sender: Any) {


    }
    

    @IBAction func randomButtonTapped(_ sender: Any) {

        

    }

    @IBAction func addButtonTapped(_ sender: Any) {
        
    }
}
