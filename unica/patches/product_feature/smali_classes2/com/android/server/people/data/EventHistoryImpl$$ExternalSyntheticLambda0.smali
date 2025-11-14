.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/EventHistoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/EventHistoryImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventHistoryImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object p0, p0, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/EventHistoryImpl;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventList;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba00

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    iget-object v0, v0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V

    goto :goto_2f

    :catchall_3f
    move-exception v0

    goto :goto_69

    :cond_41
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_67

    const/4 v1, 0x0

    :goto_4f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_67

    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/EventIndex;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_67
    monitor-exit p0

    return-void

    :goto_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_3f

    throw v0
.end method
