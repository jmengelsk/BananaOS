.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mCasResources:Ljava/util/Map;

.field public final mCiCamResources:Ljava/util/Map;

.field public final mClientProfiles:Ljava/util/Map;

.field public final mDemuxResources:Ljava/util/Map;

.field public final mFrontendExistingNums:Landroid/util/SparseIntArray;

.field public final mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

.field public final mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

.field public final mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

.field public final mFrontendResources:Ljava/util/Map;

.field public final mFrontendResourcesBackup:Ljava/util/Map;

.field public final mFrontendUsedNums:Landroid/util/SparseIntArray;

.field public final mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

.field public final mListeners:Ljava/util/Map;

.field public final mLnbResources:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMediaResourceManager:Landroid/media/IResourceManagerService;

.field public mNextUnusedClientId:I

.field public final mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field public mResourceRequestCount:I

.field public mTunerApiLockHolder:I

.field public mTunerApiLockHolderThreadId:J

.field public mTunerApiLockNestedCount:I

.field public final mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

.field public mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method public static -$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method public static -$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ", "

    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1
    return-void
.end method

.method public static -$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "TunerResourceManagerService: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "TunerResourceManagerService: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.permission.ACCESS_TV_TUNER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IZZ)Z
    .locals 9

    const-string v0, ", 500) - called while someone else:"

    const-string v1, ", 500) - called while there is no current holder"

    const-string/jumbo v2, "SUCCESS:releaseLockInternal("

    const-string/jumbo v3, "releaseLockInternal()"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(ILjava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    const-string/jumbo v6, "TunerResourceManagerService"

    const-string/jumbo v7, "releaseLockInternal("

    if-ne v3, p1, :cond_6

    :try_start_1
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, ", 500, "

    const-string v8, ", "

    if-nez p2, :cond_2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_2
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - NOT signaling because nested count is not zero ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - signaling!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v5, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    iput v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    return v1

    :cond_6
    if-ne v3, v5, :cond_8

    if-nez p3, :cond_7

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :cond_8
    if-nez p3, :cond_9

    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "is the current holder"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    return v4

    :goto_4
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_b
    throw p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "TunerResourceManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    const/16 v1, 0x96

    iput v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    const/16 v1, 0x32

    iput v1, v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    return-void
.end method

.method public static replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    if-eqz p0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static validateResourceHandle(IJ)Z
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    const-wide/16 v0, 0xff

    and-long/2addr p1, v0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Native media resource manager service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkClientExists(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public checkIsForeground(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_2

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    iput v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    :cond_2
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    if-eq v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    :cond_3
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v1

    iput-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    iput v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    iput v3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    iput v3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public final clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    iget v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    iget v4, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    iput v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-wide v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    iput-wide v3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    return-void
.end method

.method public clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    if-gez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    return-void
.end method

.method public final generateResourceHandle(II)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 p1, 0x38

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const/16 v2, 0x18

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    or-long p0, p1, v0

    return-wide p0
.end method

.method public getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    return-object p0
.end method

.method public getCasResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    return-object p0
.end method

.method public getCiCamResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public getClientPriority(IZ)I
    .locals 2

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getClientPriority useCase="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    array-length p2, p2

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    array-length p2, p2

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    :cond_3
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return p0
.end method

.method public getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    return-object p0
.end method

.method public getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    return-object p0
.end method

.method public getDemuxResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/DemuxResource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    return-object p0
.end method

.method public getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    return-object p0
.end method

.method public getFrontendResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    return-object p0
.end method

.method public getLnbResources()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public getResourceIdFromHandle(J)I
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    long-to-int p0, p1

    return p0

    :cond_0
    const/16 p0, 0x18

    shr-long p0, p1, p0

    long-to-int p0, p0

    return p0
.end method

.method public isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string/jumbo v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isHigherPriority(challengerProfile="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", holderProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string/jumbo p0, "TvInputManager is null. Can\'t compare the priority."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v1, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v3, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    iget p2, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    if-le p1, p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final lockForTunerApiLock(ILjava/lang/String;)Z
    .locals 8

    const-string v0, ", timeoutMS:500, mTunerApiLockHolder:"

    const-string/jumbo v1, "TunerResourceManagerService"

    const-string v2, "FAILED to lock mLockForTRMSLock in "

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientId:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exception thrown in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return v3
.end method

.method public final onStart()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V

    const-string/jumbo v1, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tv_input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    const-string v2, "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string/jumbo v3, "UseCasePriorityHints"

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parseInternal(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to parse vendor file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error reading vendor file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "no vendor priority configuration available. Using default priority"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0xb4

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x1c2

    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x1e0

    const/16 v2, 0x12c

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x1ea

    const/16 v2, 0x190

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    const/16 v1, 0x258

    const/16 v2, 0x1f4

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    :goto_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    const-string/jumbo p1, "ro.tuner.lazyhal"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "tuner.server.enable"

    const-string/jumbo v1, "true"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez p1, :cond_5

    const-string/jumbo p1, "media.resource_manager"

    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const-string/jumbo v1, "TunerResourceManagerService"

    if-nez p1, :cond_4

    const-string/jumbo p0, "Resource Manager Service not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    goto :goto_3

    :catch_2
    const-string p0, "Could not link to death of native resource manager service."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public reclaimResource(II)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    invoke-interface {v1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "TunerResourceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to reclaim resources on client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Reclaiming resources because higher priority client request resource type "

    const-string v3, ", clientId:"

    invoke-static {p2, p1, v1, v3, v0}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_4
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p0, :cond_4

    :try_start_5
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    invoke-interface {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string/jumbo p2, "TunerResourceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to reclaim resources on client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v2

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerClientProfile(clientProfile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p3, v0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v1, :cond_1

    const-string/jumbo p0, "TunerResourceManagerService"

    const-string/jumbo p1, "TvInputManager is null. Can\'t register client profile."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    aput v2, p3, v0

    iget-object v2, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iget-object v2, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "TunerResourceManagerService"

    const-string v4, "Could not overridePid in resourceManagerSercice, remote exception: "

    invoke-static {v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    aget v3, p3, v0

    invoke-direct {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mTvInputSessionId:Ljava/lang/String;

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    iput v3, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mUseCase:I

    iput v1, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->mProcessId:I

    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    invoke-direct {v3, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    iput p1, v3, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    :goto_2
    aget p1, p3, v0

    iget-object p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_5

    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string/jumbo p0, "TunerResourceManagerService"

    const-string/jumbo p2, "Listener is null when client "

    const-string p3, " registered!"

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    :try_start_1
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, p3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_1
    const-string/jumbo p0, "TunerResourceManagerService"

    const-string/jumbo p1, "Listener already died."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseCasSession(sessionResourceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    const-string v2, ")"

    const-string/jumbo v3, "TunerResourceManagerService"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    :cond_1
    iget-object v0, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return-void
.end method

.method public releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseCiCamInternal(ciCamId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    const-string v2, ")"

    const-string/jumbo v3, "TunerResourceManagerService"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return-void
.end method

.method public releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseDemux(DemuxHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    iget-wide v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseFrontendInternal(JI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "releaseFrontend(id="

    const-string v2, ", clientId="

    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-static {v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(IJ)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Release frontend from unregistered client:"

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    if-ne p1, p3, :cond_1

    iget-object p1, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Client is not a sharee of the releasing fe."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "Releasing frontend does not exist."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Landroid/os/RemoteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "frontendHandle can\'t be invalid"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseLnb(lnbHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    iget-wide v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeClientProfile(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    invoke-interface {p1}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method

.method public requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TunerResourceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestCasSession(request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const-string/jumbo v4, "Request cas from unregistered client:"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    const/4 v8, -0x1

    aput v8, v3, v5

    iget-object v9, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v10, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v10

    if-eqz v10, :cond_e

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v4

    const/4 v10, 0x4

    if-nez v4, :cond_1

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v0, v10, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v11

    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    iget v13, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-direct {v4, v11, v12, v13}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    const v11, 0x7fffffff

    iput v11, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    new-instance v11, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    invoke-direct {v11, v4}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    iget v12, v11, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    iget v11, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    iget v12, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v12, :cond_2

    move v12, v2

    goto :goto_1

    :cond_2
    move v12, v5

    :goto_1
    if-nez v12, :cond_3

    iget v11, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget v12, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v13

    invoke-virtual {v0, v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v14

    invoke-virtual {v13, v12}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    iput v11, v14, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    iget-wide v11, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mHandle:J

    aput-wide v11, p2, v5

    monitor-exit v9

    move/from16 v17, v2

    move/from16 v16, v5

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v13, 0x3e9

    move v15, v5

    move v14, v8

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v16, v5

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v5

    if-le v13, v5, :cond_5

    iget v13, v11, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v14

    iget v14, v14, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    if-ne v13, v14, :cond_4

    move/from16 v15, v17

    goto :goto_3

    :cond_4
    move/from16 v15, v16

    :goto_3
    move v14, v2

    move v13, v5

    :cond_5
    move/from16 v5, v16

    move/from16 v2, v17

    goto :goto_2

    :cond_6
    move/from16 v17, v2

    move/from16 v16, v5

    if-eq v14, v8, :cond_d

    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-gt v2, v13, :cond_7

    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-ne v2, v13, :cond_d

    if-eqz v15, :cond_d

    iget-boolean v2, v11, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mResourceOwnershipRetention:Z

    if-nez v2, :cond_d

    :cond_7
    iget-wide v4, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mHandle:J

    aput-wide v4, p2, v16

    aput v14, v3, v16

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    aget-wide v4, p2, v16

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    aget v2, v3, v16

    if-eq v2, v8, :cond_c

    invoke-virtual {v0, v2, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_5
    return v16

    :cond_9
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v3, :cond_a

    move/from16 v3, v17

    goto :goto_6

    :cond_a
    move/from16 v3, v16

    :goto_6
    if-eqz v3, :cond_b

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Reclaimed cas still fully used"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v16

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_b
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v4, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    iput v3, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    monitor-exit v2

    return v17

    :goto_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_c
    return v17

    :cond_d
    :try_start_2
    monitor-exit v9

    return v16

    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TunerResourceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestCiCamInternal(TunerCiCamRequest="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const-string/jumbo v4, "Request ciCam from unregistered client:"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    const/4 v8, -0x1

    aput v8, v3, v5

    iget-object v9, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v10, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v10

    if-eqz v10, :cond_e

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v4

    const/4 v10, 0x5

    if-nez v4, :cond_1

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {v0, v10, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v11

    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    iget v13, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-direct {v4, v11, v12, v13}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    const v11, 0x7fffffff

    iput v11, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    new-instance v11, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    invoke-direct {v11, v4}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    iget v12, v11, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    :goto_0
    iget v11, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    iget v12, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v12, :cond_2

    move v12, v2

    goto :goto_1

    :cond_2
    move v12, v5

    :goto_1
    if-nez v12, :cond_3

    iget v11, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget v12, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v13

    invoke-virtual {v0, v12}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v14

    invoke-virtual {v13, v12}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    iput v11, v14, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    iget-wide v11, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mHandle:J

    aput-wide v11, p2, v5

    monitor-exit v9

    move/from16 v17, v2

    move/from16 v16, v5

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v13, 0x3e9

    move v15, v5

    move v14, v8

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v16, v5

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v5

    if-le v13, v5, :cond_5

    iget v13, v11, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v14

    iget v14, v14, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    if-ne v13, v14, :cond_4

    move/from16 v15, v17

    goto :goto_3

    :cond_4
    move/from16 v15, v16

    :goto_3
    move v14, v2

    move v13, v5

    :cond_5
    move/from16 v5, v16

    move/from16 v2, v17

    goto :goto_2

    :cond_6
    move/from16 v17, v2

    move/from16 v16, v5

    if-eq v14, v8, :cond_d

    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-gt v2, v13, :cond_7

    invoke-virtual {v11}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-ne v2, v13, :cond_d

    if-eqz v15, :cond_d

    iget-boolean v2, v11, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mResourceOwnershipRetention:Z

    if-nez v2, :cond_d

    :cond_7
    iget-wide v4, v4, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mHandle:J

    aput-wide v4, p2, v16

    aput v14, v3, v16

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    aget-wide v4, p2, v16

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    aget v2, v3, v16

    if-eq v2, v8, :cond_c

    invoke-virtual {v0, v2, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_5
    return v16

    :cond_9
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v3, :cond_a

    move/from16 v3, v17

    goto :goto_6

    :cond_a
    move/from16 v3, v16

    :goto_6
    if-eqz v3, :cond_b

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Reclaimed ciCam still fully used"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v16

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_b
    iget v3, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {v0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v4, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    iput v3, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    monitor-exit v2

    return v17

    :goto_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_c
    return v17

    :cond_d
    :try_start_2
    monitor-exit v9

    return v16

    :cond_e
    new-instance v0, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TunerResourceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestDemux(request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const-string/jumbo v4, "Request demux from unregistered client:"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    const/4 v8, -0x1

    aput v8, v3, v5

    iget-object v9, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v10, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v4, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v10

    aput-wide v10, p2, v5

    monitor-exit v9

    move-object/from16 v21, v3

    move/from16 v16, v5

    move-wide/from16 v19, v6

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_1
    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    if-nez v4, :cond_2

    monitor-exit v9

    return v5

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    iget v10, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    if-eqz v10, :cond_3

    move v10, v2

    goto :goto_0

    :cond_3
    move v10, v5

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/16 v14, 0x3e9

    move/from16 v16, v5

    move/from16 v17, v16

    move-object v15, v13

    move v5, v14

    move v13, v12

    move-object v14, v15

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-wide/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    if-eqz v10, :cond_5

    iget v7, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    iget v2, v6, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    and-int/2addr v2, v7

    if-ne v7, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v21, v3

    goto :goto_4

    :cond_5
    :goto_2
    iget-boolean v2, v6, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    const/16 v7, 0x20

    if-nez v2, :cond_9

    move-object/from16 v21, v3

    move/from16 v3, v16

    move v8, v3

    const/4 v2, 0x1

    :goto_3
    if-ge v8, v7, :cond_7

    iget v7, v6, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0x20

    goto :goto_3

    :cond_7
    if-le v12, v3, :cond_8

    move v12, v3

    move-object v14, v6

    :cond_8
    :goto_4
    move/from16 v22, v10

    goto :goto_9

    :cond_9
    move-object/from16 v21, v3

    if-nez v14, :cond_8

    iget v2, v6, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v2

    if-lt v5, v2, :cond_8

    move/from16 v22, v10

    move/from16 v8, v16

    move v10, v8

    const/4 v3, 0x1

    :goto_5
    const/16 v7, 0x20

    if-ge v8, v7, :cond_b

    iget v7, v6, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;->mFilterTypes:I

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_a

    add-int/lit8 v10, v10, 0x1

    :cond_a
    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    if-le v5, v2, :cond_d

    iget v3, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    iget v5, v6, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    if-ne v3, v5, :cond_c

    const/16 v17, 0x1

    goto :goto_6

    :cond_c
    move/from16 v17, v16

    :goto_6
    move v5, v2

    :goto_7
    move v13, v10

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    if-le v13, v10, :cond_e

    goto :goto_7

    :cond_e
    move/from16 v2, v16

    :goto_8
    if-eqz v2, :cond_f

    move-object v15, v6

    :cond_f
    :goto_9
    move-wide/from16 v6, v19

    move-object/from16 v3, v21

    move/from16 v10, v22

    const/4 v2, 0x1

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v21, v3

    move-wide/from16 v19, v6

    if-eqz v14, :cond_12

    iget-wide v2, v14, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v6

    invoke-virtual {v5, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    iget-object v4, v6, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-wide v2, v14, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    aput-wide v2, p2, v16

    monitor-exit v9

    goto :goto_a

    :cond_12
    if-eqz v15, :cond_19

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-gt v2, v5, :cond_13

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-ne v2, v5, :cond_19

    if-eqz v17, :cond_19

    iget-boolean v2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mResourceOwnershipRetention:Z

    if-nez v2, :cond_19

    :cond_13
    iget-wide v2, v15, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    aput-wide v2, p2, v16

    iget v2, v15, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    aput v2, v21, v16

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_a
    aget-wide v2, p2, v16

    cmp-long v2, v2, v19

    if-nez v2, :cond_14

    goto :goto_b

    :cond_14
    aget v2, v21, v16

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_15

    :goto_b
    return v16

    :cond_15
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    aget-wide v3, p2, v16

    invoke-virtual {v0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v3, :cond_16

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Reclaimed demux still in use"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v16

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_16
    aget-wide v3, p2, v16

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v5, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingDemuxHandles:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_17
    monitor-exit v2

    const/16 v18, 0x1

    return v18

    :goto_c
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_18
    const/16 v18, 0x1

    return v18

    :cond_19
    :try_start_2
    monitor-exit v9

    return v16

    :cond_1a
    new-instance v0, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_d
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestDescrambler(request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "TunerResourceManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide p0

    aput-wide p0, p2, v0

    const/4 p0, 0x1

    return p0
.end method

.method public requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TunerResourceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestFrontend(request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const-string/jumbo v4, "Release frontend before requesting another one. Client id: "

    const-string/jumbo v5, "Request frontend from unregistered client: "

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    aput-wide v7, p2, v6

    const/4 v9, -0x1

    aput v9, v3, v6

    iget-object v10, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget v11, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v11}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v0, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return v6

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_1
    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v0, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return v6

    :cond_2
    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    iget v5, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    if-eq v5, v9, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x3e9

    move v15, v6

    move v14, v13

    move-object v13, v12

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-wide/from16 v18, v7

    iget-wide v7, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(J)I

    move-result v7

    iget v8, v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    move/from16 v16, v6

    iget v6, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    if-ne v8, v6, :cond_8

    if-eqz v5, :cond_4

    iget v8, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    if-ne v7, v8, :cond_8

    :cond_4
    iget-boolean v7, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-nez v7, :cond_b

    iget-object v7, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v9, :cond_6

    :cond_5
    move/from16 v6, v16

    goto :goto_2

    :cond_6
    iget-object v8, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ne v6, v9, :cond_7

    move/from16 v6, v16

    :cond_7
    if-lt v6, v7, :cond_5

    move/from16 v6, v17

    :goto_2
    if-eqz v6, :cond_9

    :cond_8
    :goto_3
    move-object/from16 v20, v3

    goto/16 :goto_8

    :cond_9
    iget-object v6, v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v12, v2

    :goto_4
    move-object/from16 v20, v3

    goto/16 :goto_a

    :cond_a
    if-nez v12, :cond_8

    move-object v12, v2

    goto :goto_3

    :cond_b
    if-nez v12, :cond_8

    iget v6, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v7

    if-nez v7, :cond_c

    move/from16 v6, v16

    goto :goto_6

    :cond_c
    invoke-virtual {v0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v6

    iget-object v7, v7, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v8

    if-le v8, v6, :cond_d

    move v6, v8

    goto :goto_5

    :cond_e
    :goto_6
    if-le v14, v6, :cond_8

    iget v7, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    invoke-virtual {v0, v7, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v7

    iget v8, v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    iget v7, v7, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    if-eq v8, v7, :cond_12

    iget-object v7, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v9, :cond_10

    move-object/from16 v20, v3

    :cond_f
    move/from16 v3, v16

    goto :goto_7

    :cond_10
    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v9, :cond_11

    move/from16 v3, v16

    :cond_11
    if-lt v3, v7, :cond_f

    move/from16 v3, v17

    :goto_7
    if-eqz v3, :cond_13

    :goto_8
    move/from16 v6, v16

    move/from16 v2, v17

    move-wide/from16 v7, v18

    move-object/from16 v3, v20

    goto/16 :goto_1

    :cond_12
    move-object/from16 v20, v3

    :cond_13
    iget v3, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    iget v7, v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    if-ne v3, v7, :cond_14

    move/from16 v3, v17

    goto :goto_9

    :cond_14
    move/from16 v3, v16

    :goto_9
    move-object v13, v2

    move v15, v3

    move v14, v6

    goto :goto_8

    :cond_15
    move/from16 v17, v2

    move/from16 v16, v6

    move-wide/from16 v18, v7

    goto/16 :goto_4

    :goto_a
    if-eqz v12, :cond_16

    iget-wide v2, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(IJ)V

    iget-wide v2, v12, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    aput-wide v2, p2, v16

    monitor-exit v10

    goto :goto_b

    :cond_16
    if-eqz v13, :cond_1c

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-gt v2, v14, :cond_17

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-ne v2, v14, :cond_1c

    if-eqz v15, :cond_1c

    iget-boolean v2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mResourceOwnershipRetention:Z

    if-nez v2, :cond_1c

    :cond_17
    iget-wide v2, v13, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    aput-wide v2, p2, v16

    iget v2, v13, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    aput v2, v20, v16

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_b
    aget-wide v2, p2, v16

    cmp-long v2, v2, v18

    if-nez v2, :cond_18

    move/from16 v3, v16

    goto :goto_c

    :cond_18
    aget v2, v20, v16

    if-eq v2, v9, :cond_1b

    move/from16 v3, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_19

    :goto_c
    return v3

    :cond_19
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    aget-wide v4, p2, v3

    invoke-virtual {v0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v3, :cond_1a

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Reclaimed frontend still in use"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    const/16 v16, 0x0

    return v16

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_1a
    const/16 v16, 0x0

    aget-wide v3, p2, v16

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(IJ)V

    monitor-exit v2

    return v17

    :goto_d
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1b
    return v17

    :cond_1c
    :try_start_2
    monitor-exit v10

    const/16 v16, 0x0

    return v16

    :goto_e
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TunerResourceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestLnb(request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    const-string/jumbo v4, "Request lnb from unregistered client:"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    const/4 v8, -0x1

    aput v8, v3, v5

    iget-object v9, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v10, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {v0, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v10

    if-eqz v10, :cond_c

    iget v4, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x3e9

    move v14, v5

    move-object v13, v11

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move/from16 v16, v2

    iget-boolean v2, v15, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-nez v2, :cond_1

    move-object v11, v15

    goto :goto_3

    :cond_1
    iget v2, v15, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v2

    if-le v12, v2, :cond_3

    iget v12, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    iget v13, v15, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {v0, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v13

    iget v13, v13, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    if-ne v12, v13, :cond_2

    move/from16 v14, v16

    goto :goto_1

    :cond_2
    move v14, v5

    :goto_1
    move v12, v2

    move-object v13, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_2
    move/from16 v2, v16

    goto :goto_0

    :cond_4
    move/from16 v16, v2

    :goto_3
    if-eqz v11, :cond_5

    iget-wide v12, v11, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    iget v2, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {v0, v12, v13}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v10

    invoke-virtual {v4, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    iget-object v2, v10, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v10, v11, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    aput-wide v10, p2, v5

    monitor-exit v9

    goto :goto_4

    :cond_5
    if-eqz v13, :cond_b

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-gt v2, v12, :cond_6

    invoke-virtual {v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-ne v2, v12, :cond_b

    if-eqz v14, :cond_b

    iget-boolean v2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mResourceOwnershipRetention:Z

    if-nez v2, :cond_b

    :cond_6
    iget-wide v10, v13, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    aput-wide v10, p2, v5

    iget v2, v13, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    aput v2, v3, v5

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    aget-wide v9, p2, v5

    cmp-long v2, v9, v6

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    aget v2, v3, v5

    if-eq v2, v8, :cond_a

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_5
    return v5

    :cond_8
    iget-object v2, v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    aget-wide v3, p2, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v3, :cond_9

    const-string/jumbo v0, "TunerResourceManagerService"

    const-string/jumbo v1, "Reclaimed lnb still in use"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_9
    aget-wide v3, p2, v5

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v5, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return v16

    :goto_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_a
    return v16

    :cond_b
    :try_start_2
    monitor-exit v9

    return v5

    :cond_c
    new-instance v0, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setDemuxInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateDemuxInfo:"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Demux handle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;

    aget-object v4, p1, v1

    iget-wide v5, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->handle:J

    invoke-direct {v3, v5, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(J)V

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->filterTypes:I

    iput v4, v3, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    invoke-direct {v4, v3}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)V

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    iget-wide v5, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getDemuxResource(J)Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseDemuxInternal(Lcom/android/server/tv/tunerresourcemanager/DemuxResource;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mDemuxResources:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method public setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 11

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateFrontendInfo:"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    array-length v3, p1

    const/4 v4, -0x1

    if-ge v1, v3, :cond_7

    aget-object v3, p1, v1

    iget-wide v5, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {p0, v5, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Frontend handle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v1

    iget-wide v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v3, p1, v1

    iget-wide v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    aget-object v5, p1, v1

    iget-wide v6, v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:J

    invoke-direct {v3, v6, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(J)V

    iget v6, v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    iput v6, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mType:I

    iget v5, v5, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    iput v5, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->mExclusiveGroupId:I

    new-instance v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    invoke-direct {v5, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;)V

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-wide v7, v5, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    iget v9, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    iget v10, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupId:I

    if-ne v9, v10, :cond_3

    iget-object v3, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    iget-wide v9, v6, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    iget-object v9, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v3, v6, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget v5, v5, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ne v6, v4, :cond_6

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v2, :cond_a

    iget v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    :cond_a
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    iget-wide v5, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget v1, v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v4, :cond_c

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_c
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_d
    return-void
.end method

.method public setLnbInfoListInternal([J)V
    .locals 7

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string/jumbo v1, "TunerResourceManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLnbInfo(lnbHanle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Lnb handle="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v4, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(J)V

    new-instance v4, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    invoke-direct {v4, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    iget-wide v5, v4, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method public shareFrontendInternal(II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "shareFrontend from "

    const-string v1, " with "

    const-string/jumbo v2, "TunerResourceManagerService"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public transferOwnerInternal(III)Z
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "TunerResourceManagerService"

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    const-string/jumbo p0, "transferOwnerInternal. unsupported resourceType: "

    invoke-static {p1, p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    iget v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    iput v1, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    iput v0, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return v3

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p2, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(J)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareeFeClientId:Ljava/lang/Integer;

    iget-object p2, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    goto :goto_2

    :cond_4
    iget-wide v5, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    iput-wide v5, v4, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    iget-object p1, p1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object p2

    iget p2, p2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    if-eq p2, p3, :cond_5

    const-string/jumbo p0, "something is wrong in transferFeOwner:"

    const-string p1, ", "

    invoke-static {p2, p0, v4, v5, p1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    return v3
.end method

.method public unregisterClientProfileInternal(I)V
    .locals 5

    const-string v0, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    const-string/jumbo v1, "unregisterClientProfile(clientId="

    const-string/jumbo v2, "Unregistering non exists client:"

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo p0, "TunerResourceManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "TunerResourceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    const/4 v1, -0x1

    invoke-interface {p0, p1, v1}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo p1, "TunerResourceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final updateAndGetOwnerClientPriority(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    return p0
.end method

.method public updateCasInfoInternal(II)V
    .locals 4

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateCasInfo(casSystemId="

    const-string v1, ", maxSessionNum="

    const-string v2, ")"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    iput v0, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    iput v0, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    if-eqz v0, :cond_7

    iget p0, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iget p1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    sub-int p1, p2, p1

    add-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iput p2, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    if-eqz v1, :cond_6

    iget p1, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    sub-int v0, p2, v0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iput p2, v1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v0

    new-instance v2, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    iput p2, v2, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    invoke-direct {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)J

    move-result-wide v1

    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    invoke-direct {v3, v1, v2, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(JI)V

    iput p2, v3, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    new-instance p1, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    invoke-direct {p1, v3}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    iget v1, v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    iget p2, p1, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateClientPriorityInternal(III)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string/jumbo v1, "TunerResourceManagerService"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateClientPriority(clientId="

    const-string v2, ", priority="

    const-string v3, ", niceValue="

    invoke-static {p1, p2, v0, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-static {p3, v2, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Can not find client profile with id "

    const-string p2, " when trying to update the client priority."

    invoke-static {p1, p0, p2, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p1, 0x1

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    iput p2, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    :goto_0
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    return p1
.end method

.method public final updateFrontendClientMappingOnNewGrant(IJ)V
    .locals 7

    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget v3, v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mType:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v4, :cond_0

    invoke-virtual {v2, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_0
    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->mExclusiveGroupMemberHandles:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(J)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    iget-object v3, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-wide p2, v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:J

    return-void
.end method
