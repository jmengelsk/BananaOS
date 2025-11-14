.class public final Lcom/android/server/people/data/EventList;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mEvents:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/people/data/Event;)V
    .locals 7

    iget-wide v0, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    iget-wide v1, v1, Lcom/android/server/people/data/Event;->mTimestamp:J

    iget-wide v3, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v5, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/Event;

    iget-wide v5, v5, Lcom/android/server/people/data/Event;->mTimestamp:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    iget v2, v2, Lcom/android/server/people/data/Event;->mType:I

    iget v5, p1, Lcom/android/server/people/data/Event;->mType:I

    if-ne v2, v5, :cond_0

    return-void

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final firstIndexOnOrAfter(J)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/Event;

    iget-wide v4, v4, Lcom/android/server/people/data/Event;->mTimestamp:J

    cmp-long v4, v4, p1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v3, -0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final removeOldEvents(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/EventList;->firstIndexOnOrAfter(J)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v1, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-le p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    return-void
.end method
