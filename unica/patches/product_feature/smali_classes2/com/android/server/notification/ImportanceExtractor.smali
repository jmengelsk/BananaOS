.class public Lcom/android/server/notification/ImportanceExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_4e

    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_f

    goto :goto_4e

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    iget-object v0, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2d

    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    :cond_2d
    iget-object p0, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_44

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    goto :goto_45

    :cond_44
    const/4 p0, 0x1

    :goto_45
    if-nez p0, :cond_4e

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v0, 0x3

    if-le p0, v0, :cond_4e

    iput v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
