// Default empty project template
import bb.cascades 1.0

// creates one page with a label
Page {
    Container {
        layout: DockLayout {
        }
        ListView {
            id: listView
            objectName: "listView"
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    StandardListItem {
                        title: ListItem.title
                        description: ListItem.description
                    }
                },
                ListItemComponent {
                    type: "more"
                    Container {
                        Divider {
                            
                        }
                        Button {
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                            text: "More"
                            onClicked: {
                                
                            }
                        }
                    }
                }
            ]
        }
    }
    onCreationCompleted: {
        _app.load()
    }
}
