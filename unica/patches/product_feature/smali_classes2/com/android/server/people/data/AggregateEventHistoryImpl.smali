.class public final Lcom/android/server/people/data/AggregateEventHistoryImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field public final mEventHistoryList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .registers 6

    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_9
    if-ge v1, v0, :cond_1e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/people/data/EventHistory;

    invoke-interface {v2, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    return-object v2

    :cond_1e
    sget-object p0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    return-object p0
.end method

.method public final getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .registers 7

    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_a
    :goto_a
    if-ge v2, v0, :cond_27

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/people/data/EventHistory;

    invoke-interface {v3, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v3

    if-nez v1, :cond_1c

    move-object v1, v3

    goto :goto_a

    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v1, v3}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    goto :goto_a

    :cond_27
    if-eqz v1, :cond_2a

    return-object v1

    :cond_2a
    sget-object p0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    return-object p0
.end method
