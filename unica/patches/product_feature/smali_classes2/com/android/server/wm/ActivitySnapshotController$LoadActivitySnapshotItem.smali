.class public final Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivities:[Lcom/android/server/wm/ActivityRecord;

.field public final mCode:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-direct {p0, p5, p4}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    iget v2, p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LoadActivitySnapshotItem{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write()V
    .locals 9

    const-wide/16 v0, 0x20

    :try_start_0
    const-string/jumbo v2, "load_activity_snapshot"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v2, v2, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    iget v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v3, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v6, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivitySnapshotController;->hasRecord(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v7, v4, v5

    iget-object v8, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v8, v8, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v8, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {v8, v2, v7}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
