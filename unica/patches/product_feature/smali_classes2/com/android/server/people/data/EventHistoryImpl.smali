.class public Lcom/android/server/people/data/EventHistoryImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field public final mEventIndexArray:Landroid/util/SparseArray;

.field public final mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

.field public final mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

.field public final mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

.field public mLastPruneTime:J

.field public final mRecentEvents:Lcom/android/server/people/data/EventList;

.field public final mRootDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/people/data/EventList;

    invoke-direct {v0}, Lcom/android/server/people/data/EventList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    iput-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    iput-object p3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    iput-object p2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "events"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;I)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "indexes"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;I)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    iput-object p2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    return-void
.end method

.method public static eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/people/data/EventHistoryImpl$Injector;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_3d

    :cond_12
    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_3d

    aget-object v3, p1, v2

    new-instance v4, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3a

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    new-instance v4, Lcom/android/server/people/data/EventHistoryImpl;

    invoke-direct {v4, p0, v3, p2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v4}, Lcom/android/server/people/data/EventHistoryImpl;->loadFromDisk()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3d
    :goto_3d
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized addEvent(Lcom/android/server/people/data/Event;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEventInMemory(Lcom/android/server/people/data/Event;)V

    iget-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    const-string/jumbo v1, "recent"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "index"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final declared-synchronized addEventInMemory(Lcom/android/server/people/data/Event;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/people/data/Event;->mType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventIndex;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/people/data/Event;->mType:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_2d

    :cond_21
    :goto_21
    iget-wide v1, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventIndex;->addEvent(J)V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_1f

    monitor-exit p0

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_1f

    throw p1
.end method

.method public final declared-synchronized getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/data/EventIndex;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    goto :goto_1d

    :catchall_11
    move-exception p1

    goto :goto_1f

    :cond_13
    iget-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_11

    :goto_1d
    monitor-exit p0

    return-object v0

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_11

    throw p1
.end method

.method public final declared-synchronized getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventIndex;

    if-eqz v1, :cond_11

    invoke-static {v0, v1}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    goto :goto_11

    :catchall_30
    move-exception p1

    goto :goto_34

    :cond_32
    monitor-exit p0

    return-object v0

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_30

    throw p1
.end method

.method public declared-synchronized loadFromDisk()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/EventHistoryImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final declared-synchronized onDestroy()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    iget-object v0, v0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public final declared-synchronized pruneOldEvents()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    const-wide/32 v3, 0xdbba00

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_26

    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_22

    throw v0
.end method
