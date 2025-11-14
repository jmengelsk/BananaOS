.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "EdgeLightingListenerManager"

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "_onEdgeLightingStopped : RemoteException : "

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "_onEdgeLightingStarted : RemoteException : "

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
