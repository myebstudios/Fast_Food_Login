import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: iconButton
    implicitHeight: 40
    implicitWidth: 289
    text: "login with facebook"

    property color textColor: "#545454"
    property color buttonColor: "#F2F2F2"

    contentItem: Item {
        Text {
            id: btnText
            text: iconButton.text
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: textColor
            font.pixelSize: 12
        }
    }

    Image {
        id: buttonIcon
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        source: "../../images/facebookIcon.svg"
        anchors.leftMargin: 67
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
    }

    background: Rectangle {
        color: buttonColor
        radius: 50
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/

