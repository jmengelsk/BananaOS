.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_e0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "EdgeLightingClientManager"

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    const/4 v3, 0x2

    if-eq v0, v3, :cond_37

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1a

    goto :goto_7c

    :cond_1a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_23
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-interface {p0, v2}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onScreenChanged(Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_7c

    :catch_2f
    move-exception p0

    const-string/jumbo p1, "onScreenChanged : RemoteException : "

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    :cond_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_7c

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_44
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_7c

    :catch_50
    move-exception p0

    const-string/jumbo p1, "onStopEdgeLighting : RemoteException : "

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    :cond_58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    if-eqz v2, :cond_7c

    check-cast v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    iget-object v2, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_69
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-interface {p0, v2, v0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_7c

    :catch_75
    move-exception p0

    const-string/jumbo p1, "onStartEdgeLighting : RemoteException : "

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7c
    :goto_7c
    return-void

    :pswitch_7d  #0x0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "packagename"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    const-string/jumbo v3, "info"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startService packagename="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",reason="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeLightingClientManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_ce
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d9} :catch_da

    goto :goto_de

    :catch_da
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_de
    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_7d  #00000000
    .end packed-switch
.end method
