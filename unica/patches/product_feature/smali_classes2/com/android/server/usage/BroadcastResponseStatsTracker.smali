.class public final Lcom/android/server/usage/BroadcastResponseStatsTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public final mContext:Landroid/content/Context;

.field public final mExemptedRoleHoldersCache:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

.field public final mRoleHoldersChangedListener:Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public final mUserBroadcastEvents:Landroid/util/SparseArray;

.field public final mUserResponseStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-direct {p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    return-void
.end method


# virtual methods
.method public final doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_2f

    iget-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p2}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedPermissions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1a
    if-ltz v0, :cond_2f

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :catch_2f
    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public final doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedRoles()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_f
    if-ltz v2, :cond_53

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-nez v5, :cond_33

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iget-object v6, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_33
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_46

    iget-object v7, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    if-eqz v7, :cond_46

    invoke-virtual {v7, v4, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    invoke-static {v6, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    monitor-exit v1

    return v3

    :catchall_4e
    move-exception p0

    goto :goto_56

    :cond_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_53
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_4e

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    const-string v0, "Broadcast response stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_27

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13

    const-string v0, "Broadcast events:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b7

    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserBroadcastEvents;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "User "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v4, v0

    :goto_3b
    iget-object v5, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_b0

    iget-object v5, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_74

    const-string v5, "<empty>"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_aa

    :cond_74
    move v5, v0

    :goto_75
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v5, v7, :cond_aa

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/BroadcastEvent;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v7, v7, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    move v8, v0

    :goto_8a
    invoke-virtual {v7}, Landroid/util/LongArrayQueue;->size()I

    move-result v9

    if-ge v8, v9, :cond_a1

    if-lez v8, :cond_97

    const/16 v9, 0x2c

    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    :cond_97
    invoke-virtual {v7, v8}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v9

    invoke-static {v9, v10, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    :cond_a1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_aa
    :goto_aa
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_b0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_b7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11

    const-string/jumbo v0, "Response stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_98

    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Uid "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v4, v0

    :goto_3c
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_91

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserBroadcastResponseStats;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "User "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v5, v0

    :goto_65
    iget-object v7, v6, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_8b

    iget-object v7, v6, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/BroadcastEvent;

    iget-object v8, v6, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/BroadcastResponseStats;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " -> "

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    :cond_8b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_91
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_98
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9

    const-string/jumbo v0, "Role holders:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_88

    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "User "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v0

    :goto_3c
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_82

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v4, v0

    :goto_63
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7c

    if-lez v4, :cond_70

    const-string v6, ", "

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_70
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    :cond_7c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_82
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_88
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .registers 5

    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez v0, :cond_23

    new-instance v0, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_23
    iget-object p0, v0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_37

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iget-object p2, v0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-object p0
.end method

.method public final getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 6

    iget v0, p1, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_16

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    iget p0, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/android/server/usage/UserBroadcastResponseStats;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2f
    iget-object p0, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/BroadcastResponseStats;

    if-nez p0, :cond_47

    new-instance p0, Landroid/app/usage/BroadcastResponseStats;

    iget-wide v1, p1, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    iget-object v3, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Landroid/app/usage/BroadcastResponseStats;-><init>(Ljava/lang/String;J)V

    iget-object v0, v0, Lcom/android/server/usage/UserBroadcastResponseStats;->mResponseStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    return-object p0
.end method

.method public final onUserRemoved(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_22

    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :catchall_20
    move-exception p0

    goto :goto_29

    :cond_22
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_20

    throw p0
.end method

.method public final recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V
    .registers 15

    iget-object v0, p1, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsDurationMs()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    :goto_14
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v9

    if-lez v9, :cond_3a

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    sub-long v11, v5, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_3a

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-ltz v11, :cond_36

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    add-long/2addr v9, v3

    move-wide v7, v9

    :cond_36
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_14

    :cond_3a
    return-void
.end method

.method public final reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    iget-object v5, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    iget-object v6, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_d
    sget-boolean v7, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v7, :cond_23

    const-string/jumbo v7, "ResponseStatsTracker"

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v1, v8, v3, v4, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catchall_20
    move-exception v0

    goto/16 :goto_106

    :cond_23
    :goto_23
    iget-object v5, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v5}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    if-nez v5, :cond_2e

    goto :goto_3f

    :cond_2e
    invoke-interface {v5}, Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;->reset()V

    check-cast v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    iput v1, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    iput-object v2, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iput v7, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    iput-wide v3, v5, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    :goto_3f
    monitor-exit v6
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_20

    iget-object v5, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_43
    iget-object v6, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez v6, :cond_53

    const/4 v2, 0x0

    goto :goto_5b

    :cond_53
    iget-object v6, v6, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    :goto_5b
    if-nez v2, :cond_62

    monitor-exit v5

    return-void

    :catchall_5f
    move-exception v0

    goto/16 :goto_104

    :cond_62
    iget-object v6, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v6}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v8}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsWithResponseDurationMs()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v10}, Lcom/android/server/usage/AppStandbyInternal;->shouldNoteResponseEventForAllBroadcastSessions()Z

    move-result v10

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    :goto_7a
    if-ltz v11, :cond_102

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/usage/BroadcastEvent;

    invoke-virtual {v0, v13}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    iget-object v14, v13, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    :goto_8b
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->size()I

    move-result v19

    if-lez v19, :cond_ad

    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v19

    cmp-long v19, v19, v3

    if-gtz v19, :cond_ad

    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v19

    sub-long v21, v3, v19

    cmp-long v21, v21, v6

    if-gtz v21, :cond_e8

    cmp-long v21, v19, v17

    if-ltz v21, :cond_e8

    cmp-long v17, v17, v15

    if-eqz v17, :cond_af

    if-nez v10, :cond_af

    :cond_ad
    move v0, v12

    goto :goto_f2

    :cond_af
    invoke-virtual {v0, v13}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    add-long v17, v19, v8

    if-eqz v1, :cond_e3

    if-eq v1, v12, :cond_de

    const/4 v12, 0x2

    if-eq v1, v12, :cond_d9

    const-string/jumbo v12, "ResponseStatsTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Unknown event: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_e9

    :cond_d9
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    goto :goto_e9

    :cond_de
    move v0, v12

    invoke-virtual {v15, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    goto :goto_e9

    :cond_e3
    move v0, v12

    invoke-virtual {v15, v0}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    goto :goto_e9

    :cond_e8
    move v0, v12

    :goto_e9
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->removeFirst()J

    move v12, v0

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    goto :goto_8b

    :goto_f2
    invoke-virtual {v14}, Landroid/util/LongArrayQueue;->size()I

    move-result v12

    if-nez v12, :cond_fb

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_fb
    add-int/lit8 v11, v11, -0x1

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_7a

    :cond_102
    monitor-exit v5

    return-void

    :goto_104
    monitor-exit v5
    :try_end_105
    .catchall {:try_start_43 .. :try_end_105} :catchall_5f

    throw v0

    :goto_106
    :try_start_106
    monitor-exit v6
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_20

    throw v0
.end method
