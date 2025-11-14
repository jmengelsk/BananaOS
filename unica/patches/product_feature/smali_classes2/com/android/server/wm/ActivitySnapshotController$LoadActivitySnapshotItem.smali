.class public final Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivities:[Lcom/android/server/wm/ActivityRecord;

.field public final mCode:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-direct {p0, p5, p4}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    if-eq v2, v1, :cond_c

    goto :goto_22

    :cond_c
    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    iget v2, p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    if-ne v1, v2, :cond_22

    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    if-ne v1, v2, :cond_22

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    if-ne p0, p1, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

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
    .registers 10

    const-wide/16 v0, 0x20

    :try_start_2
    const-string/jumbo v2, "load_activity_snapshot"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v2, v2, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    iget v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_4f

    if-nez v2, :cond_1b

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v3, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_4f

    :try_start_22
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v6, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivitySnapshotController;->hasRecord(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_35

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_33

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_33
    move-exception p0

    goto :goto_4d

    :cond_35
    :try_start_35
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    array-length v6, v4

    :goto_38
    if-ge v5, v6, :cond_48

    aget-object v7, v4, v5

    iget-object v8, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v8, v8, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v8, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {v8, v2, v7}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_33

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_33

    :try_start_4e
    throw p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
