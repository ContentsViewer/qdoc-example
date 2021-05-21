# qdoc-example

Documenting a QML and C++ type with [QDoc](http://doc.qt.io/qt-5/qdoc-index.html).

## Background
In order to use qdoc, the documentation tool for QT, I did a Google search and found this repository.

[retifrav-qdoc-example](https://github.com/retifrav/qdoc-example)

It worked well in QML, but there were some problems with C++.
Specifically, the following two points.

* Classes with the `Q_OBJECT` macro are not documented.
    * <https://stackoverflow.com/questions/52739030/why-does-q-object-break-qdoc>

* Cannot find QString type or other project types.
    * qdoc gives `error: unknown type name 'QString'.`
    * <https://bugreports.qt.io/browse/QTBUG-67289>

## Objective
This repository is a revision of the  [retifrav-qdoc-example](https://github.com/retifrav/qdoc-example) to work with C++. I referred to the above two links to solve the problem.