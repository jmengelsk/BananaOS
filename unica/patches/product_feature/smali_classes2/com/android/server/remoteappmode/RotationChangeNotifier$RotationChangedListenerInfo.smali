.class public final Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

.field public mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RotationChangeNotifier;Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    invoke-direct {p0, p4, p5, p3}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(IILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 6

    const-string v0, " binderDied: RemoteException "

    iget-object v1, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    iget-object v1, v1, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/RotationChangeNotifier;

    iget-object v2, v2, Lcom/android/server/remoteappmode/RotationChangeNotifier;->mRotationChangedListeners:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v3}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_49

    :try_start_16
    iget-object v2, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez v2, :cond_1b

    goto :goto_3d

    :cond_1b
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_26
    .catchall {:try_start_16 .. :try_end_25} :catchall_49

    goto :goto_3d

    :catch_26
    move-exception v2

    :try_start_27
    const-string/jumbo v3, "RotationChangeNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/remoteappmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_49

    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_49
    move-exception p0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final registerRotationWatcher(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    invoke-direct {v0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->mWatcher:Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RotationChangeNotifier$RotationChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    iput-object p0, v0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    iput p1, v0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->mDisplayId:I

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    :cond_18
    return-void
.end method
