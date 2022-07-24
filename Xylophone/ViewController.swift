//
//  ViewController.swift
//  Xylophone
//
//  Created by Maxim Fedarau on 24.07.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 1
        playSound(fileName: (sender.titleLabel?.text)!)
    }
    
    func playSound(fileName: String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")

        player = try! AVAudioPlayer(contentsOf: url!)

        guard let player = player else { return }

        player.play()

        
    }

    @IBAction func keyUnpressed(_ sender: UIButton) {
        sender.alpha = 0.8
    }
}

