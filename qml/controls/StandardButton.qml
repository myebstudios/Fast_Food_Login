import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: standardButton
    implicitHeight: 40
    implicitWidth: 120
    text: "Login"

    property color textColor: "#ffffff"
    property color buttonColor: "#40CC6F"
    property bool textUnderline: false

    contentItem: Item {
        Text {
            id: btnText
            text: standardButton.text
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: textColor
            font.pixelSize: 12
            font.underline: standardButton.textUnderline
        }
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
    D{i:0;formeditorZoom:1.5}
}
##^##*/

