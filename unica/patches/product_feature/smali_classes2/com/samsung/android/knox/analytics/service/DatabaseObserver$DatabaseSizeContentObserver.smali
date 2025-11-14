.class public Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onChange$0()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHasAlertedUploader:Z

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide p1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onChange(): currentSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-boolean v2, v1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHasAlertedUploader:Z

    if-nez v2, :cond_0

    iget-wide v1, v1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbAlertSizeInBytes:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-string/jumbo p1, "onChange(): alert triggered"

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastDbSizeWarning(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHasAlertedUploader:Z

    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;)V

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-wide v0, v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbMaxSizeInBytes:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    sget-object p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onChange(): database full, compression needed"

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget p2, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->compressEvents()V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput p2, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->cleanDatabase()V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide p1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver;

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbMaxSizeInBytes:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->databaseFallback()V

    :cond_3
    return-void
.end method
