//
//  List.swift
//  JadKit
//
//  Created by Jad Osseiran on 21/12/2014.
//  Copyright (c) 2016 Jad Osseiran. All rights reserved.
//
//  --------------------------------------------
//
//  This protocol outlines the most basic bhaviour that a list should implement.
//
//  --------------------------------------------
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice,
//  this list of conditions and the following disclaimer.
//
//  * Redistributions in binary form must reproduce the above copyright notice,
//  this list of conditions and the following disclaimer in the documentation
//  and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
//  THE POSSIBILITY OF SUCH DAMAGE.
//

import UIKit

/**
 This protocol outlines the most basic bhaviour that a list should implement.
 */
@objc public protocol List {
  /**
   The cell identifier for the given index path.
   - parameter indexPath: The index path of the cell.
   - returns: The cell identifier.
   */
  func cellIdentifierForIndexPath(indexPath: NSIndexPath) -> String

  /**
   Helper method to configure a cell at the given index path with a given
   object.
   - parameter listView: The list view that is cnofiguring the cell.
   - parameter cell: The cell to configure.
   - parameter object: The object which matches the cell's index path.
   - parameter indexPath: The index path of the cell to configure.
   */
  func listView(listView: UIView, configureCell cell: UIView, withObject object: AnyObject,
                atIndexPath indexPath: NSIndexPath)

  /**
   Called when the user selects a cell at the given index path.
   - parameter listView: The list view that is interacted with.
   - parameter object: The object at the selected index path.
   - parameter indexPath: The index path of the cell which was selected.
   */
  func listView(listView: UIView, didSelectObject object: AnyObject,
                atIndexPath indexPath: NSIndexPath)
}
