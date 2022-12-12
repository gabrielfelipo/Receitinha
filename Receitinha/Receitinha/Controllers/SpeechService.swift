//
//  SpeechService.swift
//  Receitinha
//
//  Created by ditthales on 12/12/22.
//

import AVFoundation

class SpeechService{
    
    let synthesizer = AVSpeechSynthesizer()
    
    var rate: Float = AVSpeechUtteranceDefaultSpeechRate
    var voice = AVSpeechSynthesisVoice(language: "pt-BR")
    
    func say(_ phrase: String){
        let utterance = AVSpeechUtterance(string: phrase)
        utterance.rate = rate
        utterance.voice = voice
        synthesizer.speak(utterance)
        
    }
}
