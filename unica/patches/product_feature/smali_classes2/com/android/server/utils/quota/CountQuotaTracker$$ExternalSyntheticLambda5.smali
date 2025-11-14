.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroid/util/LongArrayQueue;

    sget-object p0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    check-cast v0, Lcom/android/server/utils/quota/UptcMap;

    iget-object p0, v0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p2, v0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, v0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p3, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2, p4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Landroid/util/proto/ProtoOutputStream;

    check-cast p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    sget-object p0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    iget-object p0, v1, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p3, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-wide v2, 0x20b00000003L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v7, p1, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    :goto_1
    const-wide v6, 0x10b00000001L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10500000001L

    invoke-virtual {v0, v8, v9, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10900000002L

    invoke-virtual {v0, v8, v9, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v8, 0x10900000003L

    invoke-virtual {v0, v8, v9, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10800000002L

    invoke-virtual {v0, v6, v7, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object p0, v1, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    const-wide p3, 0x10300000001L

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {p0, p1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, p3, p4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    const-wide p0, 0x20b00000004L

    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p0

    iget-wide v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p3, 0x10300000002L

    iget-wide v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p3, 0x10500000003L

    iget v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p3, 0x10500000004L

    iget v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p3, 0x10300000005L

    iget-wide v1, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
