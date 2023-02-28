//
//  MainViewController.swift
//  codepath_homework1
//
//  Created by Nikhil Aggarwal on 2/24/23.
//

import UIKit

class MainViewController: UIViewController {
    
    let BackstoryContext = Context(title: "Backstory", image: UIImage(named: "krypton")!, description: "I was born on the planet Krypton, a scientifically advanced society that was on the brink of destruction due to a geological instability. My parents, Jor-El and Lara, sent me to Earth in a spaceship just moments before Krypton exploded. I was found and adopted by a Kansas couple, Jonathan and Martha Kent, who raised me as their own son, naming me Clark Kent. \n \n As I grew up, I discovered that I had incredible powers such as superhuman strength, speed, durability, flight, and heat vision, among others. I learned to use these powers for good and decided to become a hero, using the identity of Superman to protect the people of Earth from danger.")
    
    let WeaknessContext = Context(title: "Weakness", image: UIImage(named: "kryptonite")!, description: "My greatest weakness is a green glowing mineral from my home planet called kryptonite. It weakens me and drains me of my powers. Exposure to even a small amount of kryptonite can cause me immense pain, and prolonged exposure can even lead to my death. \n \n The effects of kryptonite vary depending on the amount and duration of exposure. Small fragments of it weaken me temporarily, while larger chunks can render me powerless and unable to move. In extreme cases, prolonged exposure can cause me to lose consciousness or even die. \n \nDespite being vulnerable to kryptonite, I am determined to protect the people of Earth from harm. Over the years, I have encountered numerous foes who have used this mineral to try to defeat me, but I always find a way to overcome it and emerge victorious.")
    
    let SuperpowersContext = Context(title: "Superpowers", image: UIImage(named: "heat_vision")!, description: "As Superman, I possess a wide range of incredible superpowers that allow me to protect the people of Earth from danger. My physical abilities are far beyond those of a normal human, and I am virtually indestructible. \n \n I have incredible strength, which allows me to lift enormous objects such as buildings, ships, and even mountains with ease. My speed is also unparalleled, and I can travel faster than a speeding bullet. I can fly at incredible speeds and maneuver through the air with great precision. \n \n In addition to my physical abilities, I have a number of other powers that make me unique. I have the ability to emit intense heat from my eyes, known as heat vision, which can melt through virtually any material. I can also see through walls and other objects with my X-ray vision.")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapContextButton(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {
                if tappedView.tag == 0 {
                    detailViewController.context = BackstoryContext
                } else if tappedView.tag == 1 {
                    detailViewController.context = WeaknessContext
                } else if tappedView.tag == 2 {
                    detailViewController.context = SuperpowersContext
                } else {
                    print("no Context was tapped, please check your selection.")
                }
        }
    }
}

