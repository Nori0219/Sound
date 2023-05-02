//
//  ViewController.swift
//  Sound
//
//  Created by 杉井位次 on 2023/05/02.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムがタップされたときに呼ばれる
    @IBAction func tapDrumButton() {
        
        //ドラムの音を鳴らす 連続してタップされた場合に、音源ファイルの再生時間を最初の「０」に戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }


}

