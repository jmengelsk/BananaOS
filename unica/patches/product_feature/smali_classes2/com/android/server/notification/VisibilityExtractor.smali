.class public Lcom/android/server/notification/VisibilityExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

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

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 11

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_3

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_3
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_5

    :goto_1
    move v6, v4

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v7

    if-eq v7, v2, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_3
    iget-object v8, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v2, :cond_7

    move v8, v4

    goto :goto_4

    :cond_7
    move v8, v5

    :goto_4
    if-eqz v3, :cond_10

    if-eqz v6, :cond_10

    if-eqz v7, :cond_10

    if-nez v8, :cond_8

    goto :goto_9

    :cond_8
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_9

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    :cond_9
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-ne v0, v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_b

    :goto_5
    move v0, v4

    goto :goto_6

    :cond_b
    move v0, v5

    :goto_6
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    iget-object p0, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result p0

    const/16 v2, -0x3e8

    if-eq p0, v2, :cond_d

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_d
    if-eqz v3, :cond_f

    if-eqz v0, :cond_f

    if-nez v4, :cond_e

    goto :goto_8

    :cond_e
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_f
    :goto_8
    iput v5, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_10
    :goto_9
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method
