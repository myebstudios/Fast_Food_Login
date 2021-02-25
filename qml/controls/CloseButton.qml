import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: closeButton
    implicitHeight: 20
    implicitWidth: 20

    background: Rectangle {
        anchors.fill: parent
        color: "#FE5555"
        radius: 50
    }

    Image {
        id: closeIcon
        anchors.verticalCenter: parent.verticalCenter
        source: "../../images/closeIcon.png"
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:10}
}
##^##*/
