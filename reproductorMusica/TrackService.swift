//
//  TrackService.swift
//  reproductorMusica
//
//  Created by Raul Suarez Dabo on 09/04/16.
//  Copyright © 2016 es.com.suarez. All rights reserved.
//

import Foundation


class TrackService {
    
    func getTrack(i: Int)->Track {
         return Track(name: nameDict[i]!, filename: fileDict[i]!, coverfile: coverDict[i]!);
    }
    
    func getResource(track: Track)->NSURL {
        return NSBundle.mainBundle().URLForResource(track.getFilename(), withExtension: "mp3")!
    }
    
    func getCover(track: Track)-> String {
        return NSBundle.mainBundle().pathForResource(track.getCoverfile(), ofType: "jpg")!
    }
}