// Default empty project template
import bb.cascades 1.0
import bb.system 1.0

// creates one page with a label
Page {
    Container {
        layout: DockLayout {}
        Button {
            text: "Show Dialog"
            onClicked: {
                if(!listDialog.created)
                {
                    listDialog.appendItem("Argo")
                    listDialog.appendItem("Amadeus")
                    listDialog.appendItem("Braveheart")
                    listDialog.appendItem("Casablanca")
                }
                listDialog.show()
            }
            attachedObjects: [
                SystemListDialog {
                    property bool created: false
                    id: listDialog
                	title: "Oscar winning movies"
                	selectionMode: ListSelectionMode.Multiple
                	confirmButton.label: "My favorite"
                	cancelButton.label: "I don't watch movies"
                }
            ]
        }
    }
}

