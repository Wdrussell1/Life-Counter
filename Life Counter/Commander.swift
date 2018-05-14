//
//  Commander.swift
//  Life Counter
//
//  Created by Casey Barrett on 5/13/18.
//  Copyright © 2018 BarrettPCSolutions. All rights reserved.
//

import UIKit

class Commander: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    var PlayerOneCount = 40
    var PlayerTwoCount = 40
    var PlayerThreeCount = 40
    var PlayerFourCount = 40
    @IBOutlet weak var Player1Life: UILabel!
    @IBAction func P1Add(_ sender: UIButton){P1increaseCount()}
    @IBAction func P1Minus (_ sender: UIButton){P1decreaseCount()}
    
    func P1increaseCount () {
        PlayerOneCount += 1
        Player1Life.text = String(PlayerOneCount)
    }
    
    func P1decreaseCount () {
        PlayerOneCount -= 1
        Player1Life.text = String(PlayerOneCount)
    }
    
    @IBOutlet weak var Player2Life: UILabel!
    
    @IBAction func P2Add(_ sender: UIButton) {P2increaseCount()}
    
    @IBAction func P2Minus(_ sender: UIButton){P2decreaseCount()}
    
    
    func P2increaseCount () {
        PlayerTwoCount += 1
        Player2Life.text = String(PlayerTwoCount)
    }
    
    func P2decreaseCount () {
        PlayerTwoCount -= 1
        Player2Life.text = String(PlayerTwoCount)
    }
    @IBOutlet weak var PlayerThreeLife: UILabel!
    
    @IBAction func P3Add(_ sender:UIButton){P3increaseCount()}
    
    @IBAction func P3Minus(_ sender:UIButton){P3decreaseCount()}
    
    func P3increaseCount () {
        PlayerThreeCount += 1
        PlayerThreeLife.text = String(PlayerThreeCount)}
    
    func P3decreaseCount () {
        PlayerThreeCount -= 1
        PlayerThreeLife.text = String(PlayerThreeCount)}
    
    @IBOutlet weak var PlayerFourLife:UILabel!
    
    @IBAction func P4Add(_ sender:UIButton){P4increaseCount()}
    
    @IBAction func P4Minus(_ sender:UIButton){P4decreaseCount()}
    
    func P4increaseCount () {PlayerFourCount += 1
        PlayerFourLife.text =
            String(PlayerFourCount)}
    
    func P4decreaseCount (){PlayerFourCount -= 1
        PlayerFourLife.text =
            String(PlayerFourCount)}
    
    
    
    
    
    
    
    
}
