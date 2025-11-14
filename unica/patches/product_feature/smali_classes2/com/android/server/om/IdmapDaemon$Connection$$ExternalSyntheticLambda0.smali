.class public final synthetic Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/IdmapDaemon$Connection;

.field public final synthetic f$1:Landroid/os/IIdmap2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon$Connection;Landroid/os/IIdmap2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/IdmapDaemon$Connection;

    iput-object p2, p0, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;->f$1:Landroid/os/IIdmap2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;->f$1:Landroid/os/IIdmap2;

    iget-object v1, v0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    iget-object v1, v1, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    iget-object v2, v2, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    if-ne v2, p0, :cond_2

    iget-object p0, v0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    iget p0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "idmap2d"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo v2, "OverlayManager"

    const-string v3, "Failed to disable idmap2 daemon"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
