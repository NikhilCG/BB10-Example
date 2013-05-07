// Tabbed Pane project template
import bb.cascades 1.0

TabbedPane {
    showTabsOnActionBar: true
    id: tabbedPane
    Tab {
        title: qsTr("Tab 1")
        Page {
            id: tab1
            actions: [
                // define the actions for first tab here
                ActionItem {
                    title: qsTr("Rotate")
                    onTriggered: {
                        imgTab1.rotationZ = imgTab1.rotationZ + 90;
                    }
                },
                ActionItem {
                    title: qsTr("Break")
                    onTriggered: {
                        imgTab1.imageSource = "asset:///images/picture1br.png";
                    }
                }
            ]
            Container {
                // define tab content here
                Label {
                    text: qsTr("Tab 1 title")
                    horizontalAlignment: HorizontalAlignment.Center
                    textStyle {
                        base: SystemDefaults.TextStyles.TitleText
                    }
                }
                ImageView {
                    id: imgTab1
                    imageSource: "asset:///images/picture1.png"
                    layoutProperties: StackLayoutProperties {
                        // make imageView to fill all available height
                        spaceQuota: 1.0
                    }
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    scalingMethod: ScalingMethod.AspectFit
                }
            }
        }
    }
    Tab {
        title: qsTr("Tab 2")
        Page {
            id: tab2
            Container {
                // define tab content here
                Button {
                    text: "Add tab"
                    onClicked: {
                        newTab();
                    }
                }
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: pageDefinition
            source: "asset:///UI.qml"
        }
    ]
    function newTab() {
        var c = "import bb.cascades 1.0; Tab{}";
        var tab = Qt.createQmlObject(c,tabbedPane,"newTab")
        tab.content = pageDefinition.createObject(tab);
        tabbedPane.add(tab)
    }
    onCreationCompleted: {
        // this slot is called when declarative scene is created
        // write post creation initialization here
        console.log("TabbedPane - onCreationCompleted()")

        // enable layout to adapt to the device rotation
        // don't forget to enable screen rotation in bar-bescriptor.xml (Application->Orientation->Auto-orient)
        OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.All;
    }
}
