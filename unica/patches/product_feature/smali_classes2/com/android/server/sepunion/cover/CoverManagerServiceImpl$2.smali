.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw p0
.end method
