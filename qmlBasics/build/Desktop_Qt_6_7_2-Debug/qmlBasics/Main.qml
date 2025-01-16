import QtQuick
import QtQuick.Window

Window {
    id: root

    width: 800
    height: 600
    visible: true
    color: "black"
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle

        property bool iAmPretty: true

        signal mySignal()

        anchors.centerIn: parent

        width: 250
        height: 150

        rotation: 50
        radius: 20

        color: mouseArea.containsPress ? "red" : "magenta"

        MouseArea {
            id: mouseArea

            anchors.fill: parent

            onClicked: {
                // do the stuff
                console.log("Now the color changed to red")
            }
        }
    }
}

