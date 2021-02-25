import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "qml/controls"

Window {
    id: mainWindow
    width: 1110
    height: 610
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")

    Rectangle {
        id: mainContainer
        color: "#ffffff"
        anchors.fill: parent
        clip: true
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        radius: 10

        CloseButton {
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.rightMargin: 15
            z: 10
        }

        Rectangle {
            id: heroSection
            width: 653
            color: "#00000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0

            Image {
                id: heroImage
                anchors.fill: parent
                source: "images/heroBg.png"
                fillMode: Image.PreserveAspectFit

                Image {
                    id: heroLogo
                    x: 277
                    y: 245
                    width: 151
                    height: 139
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/heroLogo.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Rectangle {
            id: formSection
            color: "#00000000"
            anchors.left: heroSection.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0

            StandardButton {
                id: loginButton
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 79
                anchors.topMargin: 58
            }

            StandardButton {
                id: registerButton
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.topMargin: 58
                text: "Register"
                anchors.left: loginButton.right

                textColor: "#545454"
                buttonColor: "#ffffff"
            }

            Label {
                id: welcomeLabel
                text: qsTr("Welcome")
                anchors.left: parent.left
                anchors.top: loginButton.bottom
                font.pixelSize: 36
                anchors.leftMargin: 79
                anchors.topMargin: 30
                font.bold: true
            }

            Label {
                id: welcomeDescription
                color: "#545454"
                text: qsTr("Pleace login to your account")
                anchors.left: parent.left
                anchors.top: welcomeLabel.bottom
                font.pixelSize: 12
                anchors.leftMargin: 79
                anchors.topMargin: 0
            }

            FormInput {
                id: usernameInput
                anchors.left: parent.left
                anchors.top: welcomeDescription.bottom
                anchors.topMargin: 50
                anchors.leftMargin: 79
                z: 20
            }

            FormInput {
                id: passwordInput
                anchors.left: parent.left
                anchors.top: usernameInput.bottom
                anchors.topMargin: 30
                anchors.leftMargin: 79
                z: 20
                inputLabel: "Password"
                fieldType: "Password"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:9}D{i:10}D{i:11}
}
##^##*/

