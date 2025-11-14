.class public final Lcom/android/server/om/IdmapDaemon$Connection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mIdmap2:Landroid/os/IIdmap2;

.field public mOpened:Z

.field public final synthetic this$0:Lcom/android/server/om/IdmapDaemon;


# direct methods
.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    iput-object p2, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    iget-object p0, p1, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget p2, p1, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    iget-object v0, v0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    iget v2, v1, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:I

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, v1, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/IdmapDaemon$Connection;Landroid/os/IIdmap2;)V

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
