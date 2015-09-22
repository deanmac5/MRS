//
//  MediaReleaseTableViewController.swift
//  MRS-iOS
//
//  Created by Dean on 22/09/2015.
//  Copyright © 2015 osb. All rights reserved.
//

import UIKit

class MediaReleaseTableViewController: UITableViewController {
    
    // MARK: Properties
    var mediaReleases = [MediaRelease?]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // load the sample data
        loadSampleMediaReleases()
    }
    
    func loadSampleMediaReleases(){
        let mr1 = MediaRelease(title: "Collingwood", snippet: "Good old Collingwood forever, we know how to play the game", url: "http://www.collingwoodfc.com.au")
        let mr2 = MediaRelease(title: "Richmond", snippet: "We finished 9th again...", url: "http://www.richmondfc.com.au")
        let mr3 = MediaRelease(title: "Trade Happenings", snippet: "Dangerfield, Treloar and Cotchin to Pies for 3rd pick", url: "http://www.hopefully.com.au")
        let mr4 = MediaRelease(title: "Carlton", snippet: "Recruited Zac Dawson for their first and second picks", url: "http://carltonfc.com.au")
        mediaReleases += [mr1, mr2, mr3, mr4]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return mediaReleases.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ReleaseTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ReleaseTableViewCell
        let release = mediaReleases[indexPath.row]
        cell.titleLabel.text = release?.title
        cell.snippetLabel.text = release?.snippet
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
