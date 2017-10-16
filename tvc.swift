//
//  tvc.swift
//  CustCellTbl
//
//  Created by Vineeth Xavier on 10/10/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit
var count:Int = 0
class tvc: UITableViewController {
    
    var arrayNumb = Array(0...31)
    var objTabCell = tabelCell()
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayNumb.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {


        
        //if (indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 6) //0,3,6,9,12
        //if ( count == 0 || count == 3 || count == 6 || count == 9 || count == 12 || count == 15)
       // if ( count == 0 || count % 3 == 0)
         if ( indexPath.row == 0 || indexPath.row % 3 == 0)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            let numb = arrayNumb[indexPath.row]
            cell.textLabel?.text = String(numb)
            count = count + 1
            
            return cell
        }
        //else if( count == 1 || count == 4 || count == 7 || count == 10 )//1 4, 7,10
        else
            //if ( count == 1 || count % 3 == 1)
            if ( indexPath.row == 1 || indexPath.row % 3 == 1)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell2", for: indexPath) as! tabelCell2
            let numb = arrayNumb[indexPath.row]
            cell.lbl2?.text = String(numb)
            count = count + 1
            return cell
        }
        else //if indexPath.row == 2// 2,5,8
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell3", for: indexPath) as! tabelCell3
            let numb = arrayNumb[indexPath.row]
            cell.lbl3?.text = String(numb)
            count = count + 1
            return cell
        }
        
    }
    
    
}
