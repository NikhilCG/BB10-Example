// Default empty project template
import bb.cascades 1.0

// creates one page with a label
Page {
    Container {
        layout: DockLayout {
        }
        ListView {
            id: listView
            dataModel: ArrayDataModel {
                id: listModel
            }
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
            onCreationCompleted: {
                for (var a = 0; a < 20; a ++) {
                    var item = new Object();
                    item.type = "data";
                    
                }
            }
        }
    }
    onCreationCompleted: {
        _app.load()
    }
}
