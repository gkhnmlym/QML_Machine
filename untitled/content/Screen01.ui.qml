

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import untitled
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: 800
    height: 480
    color: "#5e5c64"

    Text {
        id: label
        y: 211
        width: 187
        height: 68
        text: qsTr("Merhaba")
        anchors.top: button.bottom
        anchors.horizontalCenterOffset: 1
        font.family: Constants.font.family
        anchors.topMargin: 34
        anchors.horizontalCenter: parent.horizontalCenter

        SequentialAnimation {
            id: animation
            running: false

            ColorAnimation {
                id: colorAnimation1
                target: rectangle
                property: "color"
                to: "#2294c6"
                from: Constants.backgroundColor
            }

            ColorAnimation {
                id: colorAnimation2
                target: rectangle
                property: "color"
                to: Constants.backgroundColor
                from: "#2294c6"
            }
        }
    }

    GridLayout {
        x: 25
        y: 60
        rows: 3
        columns: 1

        Button {
            id: button
            text: qsTr("Bekleme")
            Layout.preferredHeight: 120
            Layout.preferredWidth: 120
            checkable: true

            Connections {
                target: button
                onClicked: animation.start()
            }
        }

        Button {
            id: button1
            text: qsTr("Dondurma")
            Layout.preferredHeight: 120
            Layout.preferredWidth: 120
            checkable: true
            Connections {
                target: button1
                onClicked: animation.start()
            }
        }

        Button {
            id: button2
            text: qsTr("Yıkama")
            Layout.preferredHeight: 120
            Layout.preferredWidth: 120
            checkable: true
            Connections {
                target: button2
                onClicked: animation.start()
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 800
        height: 33
        color: "#9a9996"
    }
    states: [
        State {
            name: "clicked"
            when: button.checked

            PropertyChanges {
                target: label
                text: qsTr("Button Checked")
            }
        },
        State {
            name: "asasd"
            when: button1.checked
            PropertyChanges {
                target: label
                text: qsTr("Button sdasdas")
            }
        },
        State {
            name: "asasd"
            when: button1.checked
            PropertyChanges {
                target: label
                text: qsTr("Button sdasdas")
            }
        }
    ]
}
