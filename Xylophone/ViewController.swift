import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let title = sender.currentTitle!;
        playSound(forResource: title);
    }
    
    func playSound(forResource: String) {
        let url = Bundle.main.url(forResource: forResource, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

