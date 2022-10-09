//
//  ListHeroViewController.swift
//  jeremy-blahak-rattrapage-ios
//
//  Created by Jérémy Blahak on 06/10/2022.
//

import UIKit

class ListHeroViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var heros = [HeroStats]()

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadHero {
            self.tableView.reloadData()
            print("success")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tab = min(5, heros.count)
        return tab
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let hero = heros[indexPath.row]
        cell.textLabel?.text = hero.localized_name.capitalized
        cell.detailTextLabel?.text = hero.primary_attr.capitalized
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? HeroViewController {
            destination.hero = heros[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    func downloadHero(completed: @escaping () ->()) {
       let url = URL(string: "https://api.opendota.com/api/heroStats")
        
        URLSession.shared.dataTask(with: url!) { data, response, err in
            
            if err == nil {
                do{
                    self.heros = try JSONDecoder().decode([HeroStats].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch{
                    print("Error fetching data from api")
                }
                
            }
        }.resume()
        
    }

}
