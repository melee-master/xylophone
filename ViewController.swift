
import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func jeyPressed(_ sender: UIButton) {
        playsound(soundName: sender.currentTitle!)
    }
    func playsound(soundName: String){
        let popSound = Bundle.main.url(forResource: soundName, withExtension: "wav")
    
        do {
                player = try AVAudioPlayer(contentsOf: popSound!)
                player.play()
            } catch {
                print("couldn't load sound file")
            }
    }
}

 
