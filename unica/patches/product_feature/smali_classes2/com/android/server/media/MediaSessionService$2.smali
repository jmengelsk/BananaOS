.class public final Lcom/android/server/media/MediaSessionService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$2;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$2;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object p2, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d
    if-ltz p2, :cond_5d

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_2b

    :try_start_17
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_21
    iget v2, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    iget v3, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    iget v4, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(IIILjava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_2a} :catch_2d
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2b

    goto :goto_5a

    :catchall_2b
    move-exception p0

    goto :goto_5f

    :catch_2d
    :try_start_2d
    const-string/jumbo v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveSessionsListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is no longer authorized. Disconnecting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_2d .. :try_end_50} :catchall_2b

    :try_start_50
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5a} :catch_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_2b

    :catch_5a
    :goto_5a
    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    :cond_5d
    :try_start_5d
    monitor-exit p1

    return-void

    :goto_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_2b

    throw p0
.end method
