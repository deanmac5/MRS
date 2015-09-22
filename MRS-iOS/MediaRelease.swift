//
//  MediaRelease.swift
//  MRS-iOS
//
//  Created by Dean on 22/09/2015.
//  Copyright © 2015 osb. All rights reserved.
//

import UIKit

class MediaRelease{

    // MARK: Properties
    
    var title: String
    var snippet: String
    var url: String
    
    // MARK: Initialization
    
    init?(title: String, snippet: String, url: String){
        // initialise the stored properties
        self.title = title
        self.snippet = snippet
        self.url = url
        
        // initialisation should fail if the minimum requirements aren't met
        if title.isEmpty || snippet.isEmpty || url.isEmpty{
            return nil
        }
    }
    
    
}
