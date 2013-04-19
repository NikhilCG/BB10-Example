// Default empty project template
#include "TestChange.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

using namespace bb::cascades;

TestChange::TestChange(bb::cascades::Application *app)
: QObject(app)
{
	toMaster();
}

void TestChange::toSlave() {
	// create scene document from main.qml asset
	    // set parent to created document to ensure it exists for the whole application lifetime
	    QmlDocument *qml = QmlDocument::create("asset:///Slave.qml").parent(this);
	    qml->setContextProperty("myApp",this);
	    // create root object for the UI
	    AbstractPane *root = qml->createRootObject<AbstractPane>();
	    // set created root object as a scene
	    Application::instance()->setScene(root);
}

void TestChange::toMaster() {
	// create scene document from main.qml asset
	    // set parent to created document to ensure it exists for the whole application lifetime
	    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);
	    qml->setContextProperty("myApp",this);
	    // create root object for the UI
	    AbstractPane *root = qml->createRootObject<AbstractPane>();
	    // set created root object as a scene
	    Application::instance()->setScene(root);
}


