.class public Lcom/android/server/notification/CriticalNotificationExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mSupportsCriticalNotifications:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo p2, "android.hardware.type.automotive"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 3

    iget-boolean p0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_e

    :cond_6
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-nez p0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    const-string/jumbo p0, "car_emergency"

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return-object v0

    :cond_1c
    const-string/jumbo p0, "car_warning"

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return-object v0

    :cond_29
    const/4 p0, 0x2

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    return-object v0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
