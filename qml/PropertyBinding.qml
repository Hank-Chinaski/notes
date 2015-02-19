// Wrong: property binding breaks
Thing {
    id: root

    property int widgetFillColor: "steelblue"

    Widget {
        id: widget

        // fillColor gets bound to root's property,
        // creates listeners etc.
        property color fillColor: root.widgetFillColor

        onSomethingHappens: {
            // binding breaks, because a value gets assigned,
            // whereas property was listening to root's property
            widget.fillColor = "darkgreen"
        }
    }
}

Test {
    Thing {
        // this is ok, because the "original" value gets set
        widgetFillColor: "tomato"
    }
}


// Better: do it with an alias
Item {
    id: root

    // alias is not a binding, it's a pointer
    // to widget's value for fillColor
    property alias widgetFillColor: widget.fillColor

    Widget {
        id: widget

        // fillColor is defined here
        property color fillColor: "steelblue"

        onSomethingHappens: {
            // no binding breaks, because fillColor is defined here
            widget.fillColor = "darkgreen"
        }
    }
}

Test {
    Thing {
        // like this I assign the value directly to widget's property - ok
        widgetFillColor: "tomato"
    }
}
