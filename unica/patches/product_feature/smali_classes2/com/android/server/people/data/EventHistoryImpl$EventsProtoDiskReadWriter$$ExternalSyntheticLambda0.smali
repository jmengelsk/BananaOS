.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .registers 11

    iget p0, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_c2

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p0

    :goto_9
    :try_start_9
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    goto :goto_9

    :cond_18
    const-wide v0, 0x20b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/server/people/data/Event;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/Event;

    move-result-object v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_2c

    goto :goto_9

    :catch_2c
    move-exception p1

    const-string v0, "EventHistoryImpl$EventsProtoDiskReadWriter"

    const-string v1, "Failed to read protobuf input stream."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    new-instance p1, Lcom/android/server/people/data/EventList;

    invoke-direct {p1}, Lcom/android/server/people/data/EventList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_4c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-virtual {p1, v2}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V

    goto :goto_3e

    :cond_4c
    return-object p1

    :pswitch_4d  #0x2
    const-string p0, "EventHistoryImpl$EventIndexesProtoDiskReadWriter"

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :goto_54
    :try_start_54
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c0

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_63

    goto :goto_54

    :cond_63
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    sget-object v1, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    const/4 v6, 0x0

    :goto_6f
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    if-eq v7, v2, :cond_b4

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    if-eq v7, v3, :cond_aa

    const/4 v8, 0x2

    if-eq v7, v8, :cond_99

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read undefined field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :catch_97
    move-exception p1

    goto :goto_bb

    :cond_99
    const-wide v7, 0x10b00000002L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    invoke-static {p1}, Lcom/android/server/people/data/EventIndex;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_6f

    :cond_aa
    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    goto :goto_6f

    :cond_b4
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_ba} :catch_97

    goto :goto_54

    :goto_bb
    const-string v1, "Failed to read protobuf input stream."

    invoke-static {p0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c0
    return-object v0

    nop

    :pswitch_data_c2
    .packed-switch 0x2
        :pswitch_4d  #00000002
    .end packed-switch
.end method

.method public write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .registers 16

    iget p0, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_a4

    check-cast p2, Landroid/util/SparseArray;

    const/4 p0, 0x0

    move v0, p0

    :goto_9
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventIndex;

    const-wide v3, 0x20b00000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10b00000002L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    monitor-enter v2

    :try_start_34
    iget-object v1, v2, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    array-length v7, v1

    move v8, p0

    :goto_38
    if-ge v8, v7, :cond_49

    aget-wide v9, v1, v8

    const-wide v11, 0x20300000001L

    invoke-virtual {p1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :catchall_47
    move-exception p0

    goto :goto_5d

    :cond_49
    iget-wide v7, v2, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    const-wide v9, 0x10300000002L

    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_47

    monitor-exit v2

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :goto_5d
    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_47

    throw p0

    :cond_5f
    return-void

    :pswitch_60  #0x0
    check-cast p2, Lcom/android/server/people/data/EventList;

    iget-object p0, p2, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/people/data/Event;

    const-wide v0, 0x20b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p2, Lcom/android/server/people/data/Event;->mType:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000002L

    iget-wide v4, p2, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000003L

    iget p2, p2, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_6c

    :cond_a3
    return-void

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_60  #00000000
    .end packed-switch
.end method
