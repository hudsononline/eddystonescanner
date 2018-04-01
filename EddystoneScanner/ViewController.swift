//
//  ViewController.swift
//  EddystoneScanner
//
//  Created by Qingyun Xiu on 3/30/18.
//  Copyright © 2018 Qingyun Xiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BeaconScannerDelegate {
    
    var beaconScanner: BeaconScanner!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.beaconScanner = BeaconScanner()
        self.beaconScanner!.delegate = self
        self.beaconScanner!.startScanning()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didFindBeacon(beaconScanner: BeaconScanner, beaconInfo: BeaconInfo) {
        NSLog("FIND: %@", beaconInfo.description)
    }
    func didLoseBeacon(beaconScanner: BeaconScanner, beaconInfo: BeaconInfo) {
        NSLog("LOST: %@", beaconInfo.description)
    }
    func didUpdateBeacon(beaconScanner: BeaconScanner, beaconInfo: BeaconInfo) {
        NSLog("UPDATE: %@", beaconInfo.description)
    }
    func didObserveURLBeacon(beaconScanner: BeaconScanner, URL: NSURL, RSSI: Int) {
        NSLog("URL SEEN: %@, RSSI: %d", URL, RSSI)
    }

}

