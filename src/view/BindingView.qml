import QtQuick 2.0
import QtQuick.Controls 2.2
import com.company.bindingchecker 1.0

Item {
    BindingChecker {
        id: checker
    }

    Button {
        id: myButton
        text: "Click Me"
        onClicked: {
            checker.someVar = "ABC"
        }
    }

    Label {
        id: myLabel
        text: checker.getSomeVar()
    }

    Connections {
        target: checker
        function onSomeVarChanged() {
            myLabel.text = checker.getSomeVar()
        }
    }
}
