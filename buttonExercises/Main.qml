import QtQuick


Window {
    id: root

    width: 640
    height: 480
    visible: true
    title: qsTr("Button Exercises")

    color: if(buttonMouseArea2.containsPress) {
               return "Blue"
           } else if (buttonMouseArea1.containsPress) {
               return "Red"
           } else {
               return "White"
           }

    Rectangle {
        id: firstRectangle

        property color baseColor: "red"

        anchors {
            bottom: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 20
        }

        width: 150
        height: 50

        color: if(buttonMouseArea1.containsPress){
                   return Qt.darker(baseColor)
               } else if (buttonMouseArea1.containsMouse) {
                       return Qt.lighter(baseColor)
               } else {
                   return baseColor
               }

        Text {
            id: buttonText1

            anchors.centerIn: parent

            text: "CLICK ME"
        }

        MouseArea {
            id: buttonMouseArea1

            anchors.fill: parent

            hoverEnabled: true

            onClicked: {
                console.log("HEY I AM CLICKED!")
            }
        }
    }

    Rectangle {
        id: secondRectangle

        property color baseColor2: "blue"

        anchors {
            bottom: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
            bottomMargin: -50

        }

        width: 150
        height: 50

        color: if(buttonMouseArea2.containsPress) {
                   return Qt.darker(baseColor2)
               } else if (buttonMouseArea2.containsMouse) {
                   return Qt.lighter(baseColor2)
               } else {
                   return baseColor2
               }

        Text {
            id: buttonText2

            anchors.centerIn: parent

            text: "CLICK ME TOO"
        }

        MouseArea {
            id: buttonMouseArea2

            anchors.fill: parent

            hoverEnabled: true

            onClicked: {
                console.log("You pressed second button, LETSGOOOOO")
            }
        }
    }

    Rectangle {
        id: closebutton

        property color baseColorClose: "Grey"

        anchors {
            right: parent.right
            top: parent.top
            topMargin: 20
            rightMargin: 20
        }

        width: 50
        height: 50
        radius: 90

        color: if(mouseAreaCloseButton.containsMouse) {
               return Qt.darker(baseColorClose)
               } else {
                   return baseColorClose
               }

        Text {
            id: closeButtonText

            text: qsTr("X")
            anchors.centerIn: parent
            font.weight: Font.Thin
            font.pointSize: 20
        }

        MouseArea {
            id: mouseAreaCloseButton

            anchors.fill: parent

            hoverEnabled: true

            onClicked: {
                console.log("Exit Successful!")
                Qt.quit()
            }
        }
    }
}
