.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CoverManager_CoverHideAnimator"

    const-string/jumbo v3, "playCoverHideAnimation()"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    iget-object v0, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    invoke-virtual {v2, v1, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
