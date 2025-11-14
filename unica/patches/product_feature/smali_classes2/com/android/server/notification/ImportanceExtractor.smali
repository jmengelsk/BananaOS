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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 4

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
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

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    if-nez p0, :cond_4

    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v0, 0x3

    if-le p0, v0, :cond_4

    iput v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method
