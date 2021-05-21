#ifndef BINDINGCHECKER_H
#define BINDINGCHECKER_H

#include <QObject>

class BindingChecker : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString someVar READ someVar WRITE setSomeVar NOTIFY someVarChanged)

public:
    explicit BindingChecker(QObject *parent = nullptr);
    Q_INVOKABLE void anotherFunction();
    Q_INVOKABLE QString getSomeVar();
    QString someVar();

signals:
    void someVarChanged();

public slots:
    void callMe();
    void setSomeVar(QString);

private:
    QString m_someVar;
};

#endif // BINDINGCHECKER_H
