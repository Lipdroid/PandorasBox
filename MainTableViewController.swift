//
//  MainTableViewController.swift
//  PandorasBox
//
//  Created by Lipu Hossain on 9/21/16.
//  Copyright © 2016 lipple. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    //for static data
    private struct StoryBoard{
        static let CELL_IDENTIFIER = "cell"
        static let CALCULATOR_VIEWCONTROLLER_IDENTIFIER = "CalculatorViewController"
    }
    //Array of sections
    private let sections = [
        "Stanford",
        "Devslopes",
        "NewBoston",
        "Others"
    ]
    
    private let Stanford = [
        ("Calculator","Simple Calculator with great structure"),
        ("FaceView","A customview example"),
        
        
        ]
    
    private let Devslopes = [
        ("AutoLayout","Some simple autoLayout exercise"),
        ("AutoLayout","Some simple autoLayout exercise"),
        ("AutoLayout","Some simple autoLayout exercise")
    ]
    
    private let NewBoston = [
        ("Constrains","Size clases"),
        ("Constrains","Size clases"),
        ("Constrains","Size clases")
    ]
    
    private let Others = [
        ("AFNetworking","api calls")
    ]
    
    
    //how many section will be there return from here
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }
    
    
    //This is for how each section/header will look
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        // Gets the header view as a UITableViewHeaderFooterView and changes the text colour
        let headerView: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
        headerView.textLabel!.textColor = UIColor.purpleColor()
        
    }
    
    //This function fixes the header/sections height
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 31.0
        case 1:
            return 15.0
        case 2:
            return 15.0
        case 3:
            return 15.0
        default:
            break
        }
        
        return 31.0
    }
    //This determines the number of rows in each section
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return Stanford.count
        case 1:
            return Devslopes.count
        case 2:
            return NewBoston.count
        case 3:
            return Others.count
        default:
            break
        }
        
        return 0
    }
    
    //This is the main function for setting each row
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(StoryBoard.CELL_IDENTIFIER, forIndexPath: indexPath)
        
        let sectionName = sections[indexPath.section]
        switch sectionName {
        case "Stanford":
            let (name,description) = Stanford[indexPath.row]
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = description
        case "Devslopes":
            let (name,description) = Devslopes[indexPath.row]
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = description
        case "NewBoston":
            let (name,description) = NewBoston[indexPath.row]
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = description
        case "Others":
            let (name,description) = Others[indexPath.row]
            cell.textLabel?.text = name
            cell.detailTextLabel?.text = description
        default:
            break
        }
        
        return cell
    }
    
    //This function is for setting each header/sections title
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //This is for changig the navigation bar color to purple and the text color to white
        navigationController?.navigationBar.barTintColor = UIColor.purpleColor()
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
    }
    
    //item click on tableview
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let sectionName = sections[indexPath.section]
        switch sectionName {
        case "Stanford":
            let (name,_) = Stanford[indexPath.row]
            switch name {
            case "Calculator":
                let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
                let destination = storyboard.instantiateViewControllerWithIdentifier(StoryBoard.CALCULATOR_VIEWCONTROLLER_IDENTIFIER) as! CalculatorViewController
                navigationController?.pushViewController(destination, animated: true)
            default:
                break
            }
        case "Devslopes":
            let (name,_) = Devslopes[indexPath.row]
            switch name {
            case "someName":
                //something
                break
            default:
                break
            }
        case "NewBoston":
            let (name,_) = NewBoston[indexPath.row]
            switch name {
            case "somename":
                break
            default:
                break
            }
        case "Others":
            let (name,_) = Others[indexPath.row]
            switch name {
            case "somename":
                break
            default:
                break
            }
        default:
            break
        }
        
    }
    
}
