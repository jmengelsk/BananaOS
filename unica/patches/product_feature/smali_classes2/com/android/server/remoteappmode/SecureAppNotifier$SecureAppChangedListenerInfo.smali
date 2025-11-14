.class public final Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;
.super Lcom/android/server/remoteappmode/ListenerInfo;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/SecureAppNotifier;Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;

    invoke-direct {p0, p4, p5, p3}, Lcom/android/server/remoteappmode/ListenerInfo;-><init>(IILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;

    iget-object v0, v0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->this$0:Lcom/android/server/remoteappmode/SecureAppNotifier;

    iget-object v1, v1, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v2}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
