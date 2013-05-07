import bb.cascades 1.0

Page {
    Container {
        layout: DockLayout {
            
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            layout: StackLayout {
                orientation: LayoutOrientation.TopToBottom
            }
            Label {
                text: "New Tab"
            }
            Label {
                text: "Anything you want here"
            }
        }
    }
}
