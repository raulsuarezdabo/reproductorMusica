//
//  Track.swift
//  reproductorMusica
//
//  Created by Raul Suarez Dabo on 09/04/16.
//  Copyright © 2016 es.com.suarez. All rights reserved.
//

import Foundation

class Track {
    
    private var name: String
    
    private var filename: String
    
    private var coverfile: String
    
    init(name: String, filename: String, coverfile: String) {
        self.name = name
        self.filename = filename
        self.coverfile = coverfile
    }
    
    func getName()->String {
        return self.name
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func getFilename()->String {
        return self.filename
    }
    
    func setFilename(filename: String) {
        self.filename = filename
    }
    
    func getCoverfile()-> String {
        return self.coverfile
    }
    
    func setCoverfile(coverfile: String) {
        self.coverfile = coverfile
    }
}