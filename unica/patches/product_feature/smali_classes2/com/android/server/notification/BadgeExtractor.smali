.class public Lcom/android/server/notification/BadgeExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;


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
    .registers 10

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    goto/16 :goto_b4

    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_11

    goto/16 :goto_b4

    :cond_11
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    check-cast v0, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_24

    move v0, v5

    goto :goto_49

    :cond_24
    iget-object v3, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_43

    iget-object v3, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_badging"

    invoke-static {v6, v7, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3f

    move v6, v4

    goto :goto_40

    :cond_3f
    move v6, v5

    :goto_40
    invoke-virtual {v3, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_43
    iget-object v0, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    :goto_49
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    check-cast v2, Lcom/android/server/notification/PreferencesHelper;

    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_5c
    invoke-virtual {v2, v6, v3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_b5

    if-eqz v0, :cond_7c

    if-nez v2, :cond_68

    goto :goto_7c

    :cond_68
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    if-eqz v0, :cond_75

    if-eqz v2, :cond_75

    goto :goto_76

    :cond_75
    move v4, v5

    :goto_76
    iput-boolean v4, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    goto :goto_7e

    :cond_79
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    goto :goto_7e

    :cond_7c
    :goto_7c
    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :goto_7e
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    if-eqz v0, :cond_8a

    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8a

    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :cond_8a
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_9e

    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :cond_9e
    iget-object p0, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    check-cast p0, Lcom/android/server/notification/PreferencesHelper;

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eqz p0, :cond_b4

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p0

    if-eqz p0, :cond_b4

    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    :cond_b4
    :goto_b4
    return-object v1

    :catchall_b5
    move-exception p0

    :try_start_b6
    monitor-exit v7
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
