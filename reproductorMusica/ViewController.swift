//
//  ViewController.swift
//  reproductorMusica
//
//  Created by Raul Suarez Dabo on 07/04/16.
//  Copyright © 2016 es.com.suarez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var player: AVAudioPlayer!
    
    @IBOutlet weak var trackSelector: UISegmentedControl!
    
    let trackService: TrackService = TrackService()
    
    var selectedTrack: Track?
    
    @IBOutlet var titleLabel: UITextField!
    
    @IBOutlet var coverImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.reloadViewAttributes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reloadViewAttributes() {
        self.selectedTrack = self.trackService.getTrack(self.trackSelector.selectedSegmentIndex)
        do {
            try player = AVAudioPlayer(contentsOfURL: self.trackService.getResource(self.selectedTrack!))
            self.titleLabel.text = self.selectedTrack!.getName()
            self.coverImage.image = UIImage(named: self.trackService.getCover(self.selectedTrack!))
        } catch {
            print("Error al cargar el audio")
        }
    }

    @IBAction func trackSelectorAction() {
        self.reloadViewAttributes()
    }
    
    @IBAction func playAction() {
        if (player.playing) {
            player.pause()
        }
        else {
            player.play()
        }
    }

    @IBAction func stopAction() {
        if (player.playing) {
            player.stop()
            player.currentTime = 0
        }
    }
}

