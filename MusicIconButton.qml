import QtQuick 2.12
import QtQuick.Controls 2.5

//自定义button
Button{
    property string iconSource: ""

    property string toolTip: ""

    property bool isCheckable:false
    property bool isChecked:false

    property int iconWidth: 32
    property int iconHeight: 32

    id:self

    icon.source:iconSource
    icon.height: iconHeight
    icon.width: iconWidth

    ToolTip.visible: hovered
    ToolTip.text: toolTip

    background: Rectangle{//点击效果
        color: self.down||(isCheckable&&self.checked)?"#497563":"#20e9f4ff"
        radius: 3
    }
    icon.color: self.down||(isCheckable&&self.checked)?"#ffffff":"#e2f0f8"

    checkable: isCheckable
    checked: isChecked
}
