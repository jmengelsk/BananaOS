.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public final synthetic val$coverSwitchState:Z


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZ)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
