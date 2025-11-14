.class public final Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-direct {p0, p3, p4}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput p2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    return-void
.end method


# virtual methods
.method public final acquired()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    iget-object v0, v0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

    iget p0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    return-void
.end method

.method public final released()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    iget-object v0, v0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

    iget v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    iget-object v0, v0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    iget-object v1, v1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    iget-object v1, v1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
