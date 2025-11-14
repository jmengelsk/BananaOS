.class public final Lcom/android/server/wm/CompatChangeableAppsCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppsArray:Landroid/util/SparseArray;


# virtual methods
.method public final query(Lcom/android/internal/util/ToBooleanFunction;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_b

    monitor-exit p0

    const/4 p0, 0x0

    goto :goto_25

    :catchall_9
    move-exception p1

    goto :goto_30

    :cond_b
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/core/CompatChangeableApps;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_9

    if-nez v0, :cond_20

    new-instance v0, Lcom/samsung/android/core/CompatChangeableApps;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(IZ)V

    monitor-enter p0

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    :cond_20
    move-object p0, v0

    goto :goto_25

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw p1

    :goto_25
    if-eqz p0, :cond_2e

    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v1

    :cond_2e
    const/4 p0, 0x0

    return p0

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_9

    throw p1
.end method

.method public final shouldRespectMinAspectRatioOverride(ILjava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result p0

    return p0
.end method
