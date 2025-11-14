.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->f$0:Landroid/util/IndentingPrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, ":"

    iget v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->f$0:Landroid/util/IndentingPrintWriter;

    packed-switch v2, :pswitch_data_0

    check-cast p2, Landroid/util/LongArrayQueue;

    sget-object v2, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1, p3, p4}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Landroid/util/IndentingPrintWriter;->print(J)V

    move p1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    const-string p3, ", "

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Landroid/util/IndentingPrintWriter;->print(J)V

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1
    return-void

    :pswitch_0
    check-cast p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    sget-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {p1, p3, p4}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
