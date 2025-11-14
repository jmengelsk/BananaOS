.class public Lcom/android/server/notification/ZenModeExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z


# instance fields
.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ZenModeExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

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

    sget-boolean p1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

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

    const-string/jumbo p1, "ZenModeExtractor"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 5

    const-string/jumbo v0, "ZenModeExtractor"

    sget-boolean v1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    const-string/jumbo p0, "skipping empty notification"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    const-string/jumbo p0, "skipping - no zen info available"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v3

    :cond_2
    iget-object v0, v2, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, v2, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    iget v4, v2, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v2, v2, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1, v4, v2, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mInterceptSet:Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    return-object v3

    :cond_3
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    return-object v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method
