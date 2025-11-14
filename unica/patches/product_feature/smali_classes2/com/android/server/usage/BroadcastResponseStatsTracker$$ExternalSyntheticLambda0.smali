.class public final synthetic Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/BroadcastResponseStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_17

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto :goto_1c

    :cond_17
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_15

    throw p0
.end method
