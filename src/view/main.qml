import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 750
    height: 200
    title: qsTr("QDoc example")

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10

        RowLayout {
            Layout.alignment: Qt.AlignTop
            Label {
                Layout.alignment: Qt.AlignTop
                text: "Here's an example of my custom <b>TextInput</b> control:"
            }
        }

        RowLayout {
            AwesomeUIControl {
                Layout.fillWidth: true
                text: "AwesomeUIControl is just a TextInput with some customization"
                capitalization: Font.Capitalize
            }

            BindingView {
                Layout.preferredWidth: 100
            }
        }

        RowLayout {
            Layout.alignment: Qt.AlignBottom | Qt.AlignRight

            Label {
                Layout.alignment: Qt.AlignBottom
                text: "[some label in the footer for vertical symmetry]"
            }
        }
    }
}
