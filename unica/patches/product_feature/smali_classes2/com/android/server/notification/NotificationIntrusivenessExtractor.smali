.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z

.field static final HANG_TIME_MS:J = 0x2710L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IntrusivenessExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    sget-boolean p1, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Initializing  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntrusivenessExtractor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 7

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "IntrusivenessExtractor"

    const-string/jumbo p1, "skipping empty notification"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long/2addr v1, v3

    long-to-int p0, v1

    int-to-long v1, p0

    const-wide/16 v3, 0x2710

    cmp-long p0, v1, v3

    if-gez p0, :cond_3

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v1, 0x3

    if-lt p0, v1, :cond_3

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p0, v2, :cond_1

    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    :cond_1
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    if-eqz p0, :cond_2

    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    :cond_2
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_3

    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    :cond_3
    iget-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    if-nez p0, :cond_5

    :cond_4
    return-object v0

    :cond_5
    new-instance p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/notification/RankingReconsideration;-><init>(JLjava/lang/String;)V

    return-object p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method
