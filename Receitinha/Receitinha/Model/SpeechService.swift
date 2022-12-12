//
//  SpeechService.swift
//  Receitinha
//
//  Created by ditthales on 12/12/22.
//

import AVFoundation

class SpeechService{
    
    private let synthesizer = AVSpeechSynthesizer()
    
    func say(_ phrase: String){
        let utterance = AVSpeechUtterance(string: phrase)
        synthesizer.speak(utterance)
    }
}
