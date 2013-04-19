// Default empty project template
#ifndef TestChange_HPP_
#define TestChange_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class TestChange : public QObject
{
    Q_OBJECT
public:
    TestChange(bb::cascades::Application *app);
    virtual ~TestChange() {}

    Q_INVOKABLE void toSlave();
    Q_INVOKABLE void toMaster();
};


#endif /* TestChange_HPP_ */
