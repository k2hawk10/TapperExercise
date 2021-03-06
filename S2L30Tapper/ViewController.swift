//
//  ViewController.swift
//  S2L30Tapper
//
//  Created by Margaret Shih on 4/14/16.
//  Copyright © 2016 Margaret Shih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    
    
    /*--
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
 --*/
    
    //Actions
/*--
    @IBAction func onCoinTapped(sender: UIButton) {
 --*/
    
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
/*--
    @IBAction func onPlayBtnPressed(sender: UIButton) {
--*/
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {

    //whatever we are grabbing is not empty and it is not an empty string
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapsBtn.hidden = false
            tapsLbl.hidden = false
            
            //the following hidden actions will only happen when the text has value
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
        
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapsBtn.hidden = true
        tapsLbl.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLbl () {
        tapsLbl.text = "\(currentTaps) Taps"
    }
}

