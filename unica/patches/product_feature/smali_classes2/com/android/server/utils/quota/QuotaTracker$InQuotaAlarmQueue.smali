.class public final Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    sget-object v3, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    const-string v4, "In quota"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/android/server/utils/quota/Uptc;

    iget p0, p2, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/quota/Uptc;

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    check-cast v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    new-instance v3, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
