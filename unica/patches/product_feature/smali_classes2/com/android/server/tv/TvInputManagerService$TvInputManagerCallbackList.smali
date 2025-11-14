.class public final Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 4

    check-cast p1, Landroid/media/tv/ITvInputManagerCallback;

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
