.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:Landroid/os/CancellationSignal;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/people/data/DataManager;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$1:Landroid/os/CancellationSignal;

    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/people/data/DataManager;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$1:Landroid/os/CancellationSignal;

    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    monitor-enter v1

    :try_start_12
    iget-object v2, v1, Lcom/android/server/people/data/EventStore;->mEventHistoryMaps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1c
    if-ge v5, v3, :cond_40

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/people/data/EventHistoryImpl;

    invoke-virtual {v7}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_3e

    goto :goto_2e

    :catchall_3e
    move-exception p0

    goto :goto_b7

    :cond_40
    monitor-exit v1

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object v2, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_51

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    :cond_51
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    iget-object v3, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_61

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v1, v3}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    :cond_61
    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v5}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    iget-object v5, p1, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v4}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    invoke-virtual {v5, v4, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object v4, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v1, p1, v4}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    invoke-virtual {v5, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    :cond_88
    iget-object v1, p1, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    iget-object v2, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;I)V

    invoke-virtual {v5, v3, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    :cond_9b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance p1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/data/DataManager;J)V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance p1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(I)V

    return-void

    :goto_b7
    :try_start_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_3e

    throw p0
.end method
