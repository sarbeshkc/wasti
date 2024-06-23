import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    id: loginPage
    width: 400
    height: 300
    color: "#333333"

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 20

        TextField {
            id: usernameField
            placeholderText: "Username"
            color: "white"
            Layout.fillWidth: true
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            echoMode: TextField.Password
            color: "white"
            Layout.fillWidth: true
        }

        Button {
            text: "Login"
            onClicked: {
                // Implement login logic here
                console.log("Username:", usernameField.text)
                console.log("Password:", passwordField.text)
            }
            Layout.fillWidth: true
        }
    }
}
