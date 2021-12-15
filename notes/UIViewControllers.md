---
title: UIViewControllers
created: '2021-09-26T15:43:40.154Z'
modified: '2021-12-12T00:53:07.291Z'
---

# UIViewControllers

### **Lifecycle**
#### <mark>ViewDidLoad</mark>
Gets called when contentView gets created in memory or gets loaded in storyboard.
#### <mark>viewWillAppear</mark>
Gets called before the content view is added to the app's view heirarchy. 
For example: There are 2 viewControllers, first and second. There also is button that performs a segue from the first VC to the second VC. Once you are in the second VC and navigate back to the first, viewWillAppear gets called.
#### <mark>viewDidAppear</mark>
Gets called after the content view is added to the app's view heirarchy.
#### <mark>viewWillDisappear</mark>
Called beofre the content view is removed from the app's view heiarchy.
#### <mark>viewDidDisappear</mark>
Called after the content view is removed from the app's view heiarchy.
#### <mark>viewWillLayoutSubviews()</mark>
Called when the bounds change (like rotation phone) but before the subviews layout
#### <mark>viewDidLayoutSubviews()</mark>
Called when the bounds change after the app lays out the subviews.
