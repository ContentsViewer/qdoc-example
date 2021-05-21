#include "bindingchecker.h"
#include <QDebug>

/*!
    \class BindingChecker
*/



/*!
    \fn BindingChecker::BindingChecker(QObject *parent)
*/
BindingChecker::BindingChecker(QObject *parent)
    : QObject(parent)
    , m_someVar("123")
{
    qDebug() << "I'm been created!";
}


void BindingChecker::anotherFunction()
{
    qDebug() << "Another function!";
}


QString BindingChecker::someVar()
{
    return m_someVar;
}


QString BindingChecker::getSomeVar()
{
    return m_someVar;
}


void BindingChecker::callMe()
{
    qDebug() << "I'm being called!";
}


void BindingChecker::setSomeVar(QString newVar)
{
    if (m_someVar != newVar) {
        m_someVar = newVar;
        emit someVarChanged();
    }
}
