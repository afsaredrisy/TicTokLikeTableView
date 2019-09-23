//
//  TicTokLikeTableViewController.swift
//  TicTokLikeTableView
//
//  Created by Afsar Sir on 23/09/19.
//

import UIKit

open class TicTokLikeTableViewController: UITableViewController, UIGestureRecognizerDelegate {
    
    var currentCell = 0;
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        let swipGes = UISwipeGestureRecognizer(target: self, action: #selector(swipup(_sender:)))
        swipGes.delegate = self
        swipGes.direction = .up
        self.tableView.addGestureRecognizer(swipGes)
        
        let swipDown = UISwipeGestureRecognizer(target: self, action: #selector(swipDown(_sender:)))
        swipDown.delegate = self
        swipDown.direction = .down
        self.tableView.addGestureRecognizer(swipDown)
        
        self.tableView.isScrollEnabled = false
        
    }
    
    
    
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    
    override open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(self.view.bounds.height)
    }
    
    @objc func swipup(_sender: UISwipeGestureRecognizer){
        
        //print("Swiped")
        
        if _sender.direction == .up && currentCell < tableView(self.tableView, numberOfRowsInSection: 0)-1{
            currentCell  = currentCell+1
            let indexPath = IndexPath(row: currentCell, section: 0)
            self.tableView.scrollToRow(at: indexPath, at: .none, animated: true)
        }
        
    }
    
    @objc func swipDown (_sender: UISwipeGestureRecognizer){
        
        
        if _sender.direction == .down && currentCell > 0{
            
            currentCell = currentCell - 1
            let indexPath = IndexPath(row: currentCell, section: 0)
            self.tableView.scrollToRow(at: indexPath, at: .none, animated: true)
            
        }
        
        
    }
}

