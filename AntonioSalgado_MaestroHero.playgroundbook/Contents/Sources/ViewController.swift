import UIKit
import AVFoundation

public var audioPlayerFlute:AVAudioPlayer!
public var audioPlayerGuitar:AVAudioPlayer!
public var audioPlayerPiano:AVAudioPlayer!
public var audioPlayerViolin:AVAudioPlayer!
public var audioPlayerVioloncelo:AVAudioPlayer!
public var lastUsed:String = ""
public var rates: UISlider!
public var volumes: UISlider!
var violinSelectedIntex: Int?
var violonSelectedIntex: Int?
var guitarSelectedIntex: Int?
var pianoSelectedIntex: Int?
var fluteSelectedIntex: Int?

public class ViewController: UIViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
        animations()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"palco.png")!)
        
        /*----------------------------------------------BUTTONS START----------------------------------------------*/
        
        /*----------------------------------------------FLUTE BUTTON----------------------------------------------*/
        let segmentedControlFlute = ReselectableSegmentedControl(frame: CGRect(x: 280, y: 175, width: 200, height: 44))
        segmentedControlFlute.insertSegment(withTitle: "A", at: 0, animated: false)
        segmentedControlFlute.insertSegment(withTitle: "B", at: 1, animated: false)
        segmentedControlFlute.insertSegment(withTitle: "C", at: 2, animated: false)
        segmentedControlFlute.insertSegment(withTitle: "D", at: 3, animated: false)
        segmentedControlFlute.insertSegment(withTitle: "E", at: 4, animated: false)
        segmentedControlFlute.insertSegment(withTitle: "F", at: 5, animated: false)
        segmentedControlFlute.insertSegment(withTitle: "G", at: 6, animated: false)
        segmentedControlFlute.tintColor = .green
        segmentedControlFlute.addTarget(self, action: #selector(flute(sender:)), for: .valueChanged)
        self.view.addSubview(segmentedControlFlute)
        
        
        
        /*----------------------------------------------GUITAR BUTTON----------------------------------------------*/
        let segmentedControl = ReselectableSegmentedControl(frame: CGRect(x: 280, y: 300, width: 200, height: 44))
        segmentedControl.insertSegment(withTitle: "A", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "B", at: 1, animated: false)
        segmentedControl.insertSegment(withTitle: "C", at: 2, animated: false)
        segmentedControl.insertSegment(withTitle: "D", at: 3, animated: false)
        segmentedControl.insertSegment(withTitle: "E", at: 4, animated: false)
        segmentedControl.insertSegment(withTitle: "F", at: 5, animated: false)
        segmentedControl.insertSegment(withTitle: "G", at: 6, animated: false)
        segmentedControl.tintColor = .yellow
        segmentedControl.addTarget(self, action: #selector(guitar(sender:)), for: .valueChanged)
        self.view.addSubview(segmentedControl)
        
        /*----------------------------------------------PIANO BUTTON----------------------------------------------*/
        
        let segmentedControlPiano = ReselectableSegmentedControl(frame: CGRect(x: 155, y: 95, width: 200, height: 44))
        segmentedControlPiano.insertSegment(withTitle: "A", at: 0, animated: false)
        segmentedControlPiano.insertSegment(withTitle: "B", at: 1, animated: false)
        segmentedControlPiano.insertSegment(withTitle: "C", at: 2, animated: false)
        segmentedControlPiano.insertSegment(withTitle: "D", at: 3, animated: false)
        segmentedControlPiano.insertSegment(withTitle: "E", at: 4, animated: false)
        segmentedControlPiano.insertSegment(withTitle: "F", at: 5, animated: false)
        segmentedControlPiano.insertSegment(withTitle: "G", at: 6, animated: false)
        segmentedControlPiano.tintColor = .yellow
        segmentedControlPiano.addTarget(self, action: #selector(piano(sender:)), for: .valueChanged)
        self.view.addSubview(segmentedControlPiano)
        /*----------------------------------------------VIOLIN BUTTON----------------------------------------------*/
        
        let segmentedControlViolin = ReselectableSegmentedControl(frame: CGRect(x: 35, y: 300, width: 200, height: 44))
        segmentedControlViolin.insertSegment(withTitle: "A", at: 0, animated: false)
        segmentedControlViolin.insertSegment(withTitle: "B", at: 1, animated: false)
        segmentedControlViolin.insertSegment(withTitle: "C", at: 2, animated: false)
        segmentedControlViolin.insertSegment(withTitle: "D", at: 3, animated: false)
        segmentedControlViolin.insertSegment(withTitle: "E", at: 4, animated: false)
        segmentedControlViolin.insertSegment(withTitle: "F", at: 5, animated: false)
        segmentedControlViolin.insertSegment(withTitle: "G", at: 6, animated: false)
        segmentedControlViolin.tintColor = .yellow
        segmentedControlViolin.addTarget(self, action: #selector(violin(sender:)), for: .valueChanged)
        self.view.addSubview(segmentedControlViolin)
        
        /*----------------------------------------------VIOLONCELO BUTTON----------------------------------------------*/
        
        let segmentedControlViolon = ReselectableSegmentedControl(frame: CGRect(x: 35, y: 175, width: 200, height: 44))
        segmentedControlViolon.insertSegment(withTitle: "A", at: 0, animated: false)
        segmentedControlViolon.insertSegment(withTitle: "B", at: 1, animated: false)
        segmentedControlViolon.insertSegment(withTitle: "C", at: 2, animated: false)
        segmentedControlViolon.insertSegment(withTitle: "D", at: 3, animated: false)
        segmentedControlViolon.insertSegment(withTitle: "E", at: 4, animated: false)
        segmentedControlViolon.insertSegment(withTitle: "F", at: 5, animated: false)
        segmentedControlViolon.insertSegment(withTitle: "G", at: 6, animated: false)
        segmentedControlViolon.tintColor = .green
        segmentedControlViolon.addTarget(self, action: #selector(violon(sender:)), for: .valueChanged)
        self.view.addSubview(segmentedControlViolon)
        
        /*----------------------------------------------SLIDERS CONTROL----------------------------------------------*/
        
        rates = ASlider(frame: CGRect(x: 230, y: 500, width: 170, height: 44))
        rates.isUserInteractionEnabled = true
        rates.minimumValue = 0.5
        rates.maximumValue = 5.0
        rates.isContinuous = true
        rates.tintColor = UIColor.red
        rates.value = 1.0
        rates.setThumbImage(UIImage(named: "batuta.png"), for: UIControlState.normal)
        rates.setMinimumTrackImage(UIImage(), for: .normal)
        rates.setMaximumTrackImage(UIImage(), for: .normal)
        rates.addTarget(self, action: #selector(sliderRate(sender:)), for: .valueChanged)
        print(rates.value)
        self.view.addSubview(rates)
        
        volumes = UISlider(frame: CGRect(x: 40, y: 500, width: 170, height: 44))
        volumes.isUserInteractionEnabled = true
        volumes.minimumValue = 0.5
        volumes.maximumValue = 5.0
        volumes.isContinuous = true
        volumes.tintColor = UIColor.red
        volumes.value = 1.0
        volumes.setThumbImage(UIImage(named: "maobatuta.png"), for: UIControlState.normal)
        volumes.setMinimumTrackImage(UIImage(), for: .normal)
        volumes.setMaximumTrackImage(UIImage(), for: .normal)
        volumes.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
        volumes.addTarget(self, action: #selector(sliderVol(sender:)), for: .valueChanged)
        self.view.addSubview(volumes)
        
    }
    
    //FLUTE
    
    @objc func flute(sender:ReselectableSegmentedControl) {
        
        let selectedIndex = sender.selectedSegmentIndex
        if selectedIndex == fluteSelectedIntex {
            sender.selectedSegmentIndex =  UISegmentedControlNoSegment
            audioPlayerFlute.stop()
        } else {
            
            fluteSelectedIntex = selectedIndex
            let resource:String?
            lastUsed = "flute"
            switch selectedIndex {
            case 0:
                resource = "FlautaA"
            case 1:
                resource = "FlautaB"
            case 2:
                resource = "FlautaC"
            case 3:
                resource = "FlautaD"
            case 4:
                resource = "FlautaE"
            case 5:
                resource = "FlautaF"
            case 6:
                resource = "FlautaG"
                
            default:
                resource = "FlautaA"
                break
            }
            
            let audioFilePathFlute = Bundle.main.path(forResource: resource, ofType: "mp3")
            if audioFilePathFlute != nil {
                let audioFileUrlFlute = NSURL.fileURL(withPath: audioFilePathFlute!)
                do
                {
                    audioPlayerFlute = try AVAudioPlayer.init(contentsOf:  audioFileUrlFlute as URL)
                    audioPlayerFlute.numberOfLoops = -1
                    audioPlayerFlute.enableRate = true
                    audioPlayerFlute.play()            }
                catch
                {
                }
            } else {
                print("audio file is not found")
            }
        }
    }
    
    //GUITAR
    
    @objc func guitar(sender:ReselectableSegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        if selectedIndex == guitarSelectedIntex {
            sender.selectedSegmentIndex =  UISegmentedControlNoSegment
            audioPlayerGuitar.stop()
        } else {
            guitarSelectedIntex = selectedIndex
            let resource:String?
            lastUsed = "guitar"
            switch selectedIndex {
            case 0:
                resource = "violaoA"
            case 1:
                resource = "violaoB"
            case 2:
                resource = "violaoC"
            case 3:
                resource = "violaoD"
            case 4:
                resource = "violaoE"
            case 5:
                resource = "violaoF"
            case 6:
                resource = "violaoG"
                
            default:
                resource = "violaoH"
                break
            }
            
            let audioFilePathGuitar = Bundle.main.path(forResource: resource, ofType: "mp3")
            if audioFilePathGuitar != nil {
                let audioFileUrlGuitar = NSURL.fileURL(withPath: audioFilePathGuitar!)
                do
                {
                    audioPlayerGuitar = try AVAudioPlayer.init(contentsOf:  audioFileUrlGuitar as URL)
                    audioPlayerGuitar.numberOfLoops = -1
                    audioPlayerGuitar.enableRate = true
                    audioPlayerGuitar.play()
                }
                catch
                {
                    
                }
            } else {
            }
        }
    }
    
    //PIANO
    
    @objc func piano(sender:ReselectableSegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        if selectedIndex == pianoSelectedIntex {
            
            sender.selectedSegmentIndex =  UISegmentedControlNoSegment
            audioPlayerPiano.stop()
            
        } else {
            
            pianoSelectedIntex = selectedIndex
            let resource:String?
            lastUsed = "piano"
            switch selectedIndex {
            case 0:
                resource = "PianoA"
            case 1:
                resource = "PianoB"
            case 2:
                resource = "PianoC"
            case 3:
                resource = "PianoD"
            case 4:
                resource = "PianoE"
            case 5:
                resource = "PianoF"
            case 6:
                resource = "PianoG"
                
            default:
                resource = "PianoH"
                break
            }
            
            let audioFilePathPiano = Bundle.main.path(forResource: resource, ofType: "mp3")
            if audioFilePathPiano != nil {
                let audioFileUrlPiano = NSURL.fileURL(withPath: audioFilePathPiano!)
                do
                {
                    audioPlayerPiano = try AVAudioPlayer.init(contentsOf:  audioFileUrlPiano as URL)
                    audioPlayerPiano.numberOfLoops = -1
                    audioPlayerPiano.enableRate = true
                    audioPlayerPiano.play()
                }
                catch
                {
                    
                }
            } else {
                print("audio file is not found")
            }
        }
    }
    
    //VIOLIN
    
    @objc func violin(sender:ReselectableSegmentedControl) {
        
        let selectedIndex = sender.selectedSegmentIndex
        
        if selectedIndex == violinSelectedIntex {
            
            sender.selectedSegmentIndex =  UISegmentedControlNoSegment
            audioPlayerViolin.stop()
            
        } else {
            
            violinSelectedIntex = selectedIndex
            let resource:String?
            lastUsed = "violin"
            switch selectedIndex {
            case 0:
                resource = "ViolinoA"
            case 1:
                resource = "ViolinoB"
            case 2:
                resource = "ViolinoC"
            case 3:
                resource = "ViolinoD"
            case 4:
                resource = "ViolinoE"
            case 5:
                resource = "ViolinoF"
            case 6:
                resource = "ViolinoG"
                
            default:
                resource = "ViolinoH"
                break
            }
            
            let audioFilePathViolin = Bundle.main.path(forResource: resource, ofType: "mp3")
            if audioFilePathViolin != nil {
                let audioFileUrlViolin = NSURL.fileURL(withPath: audioFilePathViolin!)
                do
                {
                    audioPlayerViolin = try AVAudioPlayer.init(contentsOf:  audioFileUrlViolin as URL)
                    audioPlayerViolin.numberOfLoops = -1
                    audioPlayerViolin.enableRate = true
                    audioPlayerViolin.play()
                }
                catch
                {
                    
                }
            } else {
                print("audio file is not found")
            }
        }
    }
    
    
    //VIOLONCELO
    
    @objc func violon(sender:ReselectableSegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        if selectedIndex == violonSelectedIntex {
            
            sender.selectedSegmentIndex =  UISegmentedControlNoSegment
            audioPlayerVioloncelo.stop()
            
        } else {
            
            violonSelectedIntex = selectedIndex
            let resource:String?
            lastUsed = "celo"
            switch selectedIndex {
            case 0:
                resource = "ViolonceloA"
            case 1:
                resource = "ViolonceloB"
            case 2:
                resource = "ViolonceloC"
            case 3:
                resource = "ViolonceloD"
            case 4:
                resource = "ViolonceloE"
            case 5:
                resource = "ViolonceloF"
            case 6:
                resource = "ViolonceloG"
                
            default:
                resource = "ViolonceloH"
                break
            }
            
            let audioFilePathVioloncelo = Bundle.main.path(forResource: resource, ofType: "mp3")
            if audioFilePathVioloncelo != nil {
                let audioFileUrlVioloncelo = NSURL.fileURL(withPath: audioFilePathVioloncelo!)
                do
                {
                    audioPlayerVioloncelo = try AVAudioPlayer.init(contentsOf:  audioFileUrlVioloncelo as URL)
                    audioPlayerVioloncelo.numberOfLoops = -1
                    audioPlayerVioloncelo.enableRate = true
                    audioPlayerVioloncelo.play()
                }
                catch
                {
                    
                }
            } else {
                print("audio file is not found")
            }
        }
    }
    
    //SLIDER
    
    @objc func sliderRate(sender:UISlider){
        if lastUsed == "guitar" {
            audioPlayerGuitar.rate = rates.value
        } else if lastUsed == "flute" {
            audioPlayerFlute.rate = rates.value
        } else if lastUsed == "piano" {
            audioPlayerPiano.rate = rates.value
        } else if lastUsed == "violin" {
            audioPlayerViolin.rate = rates.value
        } else if lastUsed == "celo" {
            audioPlayerVioloncelo.rate = rates.value
        } else {
            
        }
    }
    
    @objc func sliderVol(sender:UISlider){
        if lastUsed == "guitar" {
            audioPlayerGuitar.volume = volumes.value
        } else if lastUsed == "flute" {
            audioPlayerFlute.volume = volumes.value
        } else if lastUsed == "piano" {
            audioPlayerPiano.volume = volumes.value
        } else if lastUsed == "violin" {
            audioPlayerViolin.volume = volumes.value
        } else if lastUsed == "celo" {
            audioPlayerVioloncelo.volume = volumes.value
        } else {
            
        }
    }
    
    func animations(){
        
        /*----------------------------------------------ANIMATIONS CONTROL----------------------------------------------*/
        
        //FLUTE
        
        let flutePlayer = "flute1.png"
        let imageFlauta = UIImage(named: flutePlayer)
        let flautaView = UIImageView(image: #imageLiteral(resourceName: "flute1.png"))
        flautaView.frame = CGRect(x: 320, y: 75, width: 100, height: 100)
        self.view.addSubview(flautaView)
        var fluListArray :[UIImage] = []
        for countValue in 1...4
        {
            let strImageName : String = "flute\(countValue)"
            let image  = UIImage(named:strImageName)
            fluListArray.append(image!)
        }
        
        flautaView.animationImages = fluListArray;
        flautaView.animationDuration = 1.0
        flautaView.animationRepeatCount = -1
        flautaView.startAnimating()
        
        //PIANO
        
        let pianoPlayer = "piano1.png"
        let imagePiano = UIImage(named: pianoPlayer)
        let pianoView = UIImageView(image: #imageLiteral(resourceName: "flute1.png"))
        pianoView.frame = CGRect(x: 200, y: 15, width: 100, height: 100)
        self.view.addSubview(pianoView)
        var piListArray :[UIImage] = []
        for countValue in 1...4
        {
            let strImageName : String = "piano\(countValue)"
            let image  = UIImage(named:strImageName)
            piListArray.append(image!)
        }
        
        pianoView.animationImages = piListArray;
        pianoView.animationDuration = 1.0
        pianoView.animationRepeatCount = -1
        pianoView.startAnimating()
        
        //VIOLONCELO
        
        let violonPlayer = "violon1.png"
        let imageViolon = UIImage(named: violonPlayer)
        let violonView = UIImageView(image: #imageLiteral(resourceName: "flute1.png"))
        violonView.frame = CGRect(x: 90, y: 75, width: 100, height: 100)
        self.view.addSubview(violonView)
        var violonListArray :[UIImage] = []
        for countValue in 1...4
        {
            let strImageName : String = "violon\(countValue)"
            let image  = UIImage(named:strImageName)
            violonListArray.append(image!)
        }
        
        violonView.animationImages = violonListArray;
        violonView.animationDuration = 1.0
        violonView.animationRepeatCount = -1
        violonView.startAnimating()
        
        //GUITAR
        
        let guitarPlayer = "violao1.png"
        let imageGuitar = UIImage(named: guitarPlayer)
        let guitarView = UIImageView(image: #imageLiteral(resourceName: "flute1.png"))
        guitarView.frame = CGRect(x: 390, y: 210, width: 100, height: 100)
        self.view.addSubview(guitarView)
        var guitarListArray :[UIImage] = []
        for countValue in 1...4
        {
            let strImageName : String = "violao\(countValue)"
            let image  = UIImage(named:strImageName)
            guitarListArray.append(image!)
        }
        
        guitarView.animationImages = guitarListArray;
        guitarView.animationDuration = 1.0
        guitarView.animationRepeatCount = -1
        guitarView.startAnimating()
        
        //VIOLIN
        
        let violinPlayer = "violin1.png"
        let imageViolin = UIImage(named: violinPlayer)
        let violinView = UIImageView(image: #imageLiteral(resourceName: "flute1.png"))
        violinView.frame = CGRect(x: 25, y: 200, width: 100, height: 100)
        self.view.addSubview(violinView)
        var violinListArray :[UIImage] = []
        for countValue in 1...4
        {
            let strImageName : String = "violin\(countValue)"
            let image  = UIImage(named:strImageName)
            violinListArray.append(image!)
        }
        
        violinView.animationImages = violinListArray;
        violinView.animationDuration = 1.0
        violinView.animationRepeatCount = -1
        violinView.startAnimating()
    }
    
}
