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

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }




    //MARK: - Table View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {



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
