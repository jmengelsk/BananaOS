.class Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPersistentTaskIds:Landroid/util/ArraySet;

.field public final mRunningUserIds:[I

.field public final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I",
            "Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_8

    aget v0, p3, v0

    :cond_8
    invoke-direct {p0, p4, v0}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    return-void
.end method


# virtual methods
.method public getTaskId(Ljava/lang/String;)I
    .registers 4

    const-string p0, ".proto"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, -0x1

    if-nez p0, :cond_12

    const-string p0, ".jpg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    return v0

    :cond_12
    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne p0, v0, :cond_1b

    return v0

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "_reduced"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/16 p1, 0x8

    invoke-static {p1, v1, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2f
    :try_start_2f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_33} :catch_34

    return p0

    :catch_34
    return v0
.end method

.method public final isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_14

    aget v2, p0, v0

    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method public final write()V
    .registers 16

    const-string/jumbo v0, "RemoveObsoleteFilesQueueItem"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v0, v0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v4, v4, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_5f

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1c
    if-ge v6, v4, :cond_5b

    aget v7, v0, v6

    iget-object v8, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getBaseDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2d

    goto :goto_58

    :cond_2d
    array-length v9, v8

    move v10, v5

    :goto_2f
    if-ge v10, v9, :cond_58

    aget-object v11, v8, v10

    invoke-virtual {p0, v11}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->getTaskId(Ljava/lang/String;)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_55

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_55

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_55
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_58
    :goto_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_5b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_5f
    move-exception p0

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0
.end method
