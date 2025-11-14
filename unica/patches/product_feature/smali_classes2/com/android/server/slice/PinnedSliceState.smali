.class public final Lcom/android/server/slice/PinnedSliceState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

.field public final mListeners:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPinnedPkgs:Landroid/util/ArraySet;

.field public final mPkg:Ljava/lang/String;

.field public final mService:Lcom/android/server/slice/SliceManagerService;

.field public mSlicePinned:Z

.field public mSupportedSpecs:[Landroid/app/slice/SliceSpec;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    new-instance v0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/slice/PinnedSliceState;)V

    iput-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mDeathRecipient:Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasPinOrListener()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mPinnedPkgs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final mergeSpecs([Landroid/app/slice/SliceSpec;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/slice/SliceSpec;

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSupportedSpecs:[Landroid/app/slice/SliceSpec;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setSlicePinned(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/slice/PinnedSliceState;->mSlicePinned:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object p1, p1, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/PinnedSliceState;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/slice/PinnedSliceState;->mService:Lcom/android/server/slice/SliceManagerService;

    iget-object p1, p1, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/slice/PinnedSliceState;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
