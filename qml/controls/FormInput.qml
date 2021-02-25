import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: formInput
    height: 52
    color: "#ffffff"
    width: 289

    property string inputLabel: "Username or Email"
    property string fieldType: ""

    Rectangle {
        id: inputBottomLine
        height: 0.7
        width: formInput.width
        color: "#aaaaaa"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }

    Text {
        id: fieldLabel
        text: inputLabel
        font.pixelSize: 12
        color: "#aaaaaa"
    }

    TextInput {
        id: inputField
        y: 20
        height: 32
        color: "#545454"
        //        text: qsTr("Text Input")
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 12
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        echoMode: fieldType
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:3}
}
##^##*/

