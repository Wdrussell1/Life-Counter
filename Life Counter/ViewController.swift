//
//  ViewController.swift
//  Life Counter
//
//  Created by Casey Barrett on 5/12/18.
//  Copyright © 2018 BarrettPCSolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playStandard: UIButton!
    @IBOutlet weak var playCommander: UIButton!
    
    var playingStandard: Bool = false
    var playingCommander: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        playCommander.addTarget(GameController(), action: #selector(checkForGameMode(sender:)), for: .touchUpInside)
        playStandard.addTarget(GameController(), action: #selector(checkForGameMode(sender:)), for: .touchUpInside)
        playStandard.tag = 0
        playCommander.tag = 1
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func checkForGameMode(sender: UIButton) {
        if sender == playStandard {
           isStandard = true
        }
        else if sender == playCommander {
            isStandard = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupNavigationBar() {
        let navigationBar = navigationController!.navigationBar
        
        self.extendedLayoutIncludesOpaqueBars = true
        
        navigationBar.isTranslucent = false
        navigationBar.shadowImage = UIImage()
    }
    

    }

