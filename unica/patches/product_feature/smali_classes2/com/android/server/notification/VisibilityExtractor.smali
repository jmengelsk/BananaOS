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
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 13

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_e

    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_f

    :goto_e
    return-object v1

    :cond_f
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_21

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_21
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_30

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_30
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    const/4 v5, 0x0

    if-ne v0, v2, :cond_3b

    goto :goto_45

    :cond_3b
    iget-object v6, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_47

    :goto_45
    move v6, v4

    goto :goto_48

    :cond_47
    move v6, v5

    :goto_48
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v7

    if-eq v7, v2, :cond_52

    move v7, v4

    goto :goto_53

    :cond_52
    move v7, v5

    :goto_53
    iget-object v8, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v2, :cond_69

    move v8, v4

    goto :goto_6a

    :cond_69
    move v8, v5

    :goto_6a
    if-eqz v3, :cond_c8

    if-eqz v6, :cond_c8

    if-eqz v7, :cond_c8

    if-nez v8, :cond_73

    goto :goto_c8

    :cond_73
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_82

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    :cond_82
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-ne v0, v2, :cond_8b

    goto :goto_95

    :cond_8b
    iget-object v2, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_97

    :goto_95
    move v0, v4

    goto :goto_98

    :cond_97
    move v0, v5

    :goto_98
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-eqz v2, :cond_a1

    goto :goto_a2

    :cond_a1
    move v4, v5

    :goto_a2
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

    if-eq p0, v2, :cond_bb

    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_bb
    if-eqz v3, :cond_c5

    if-eqz v0, :cond_c5

    if-nez v4, :cond_c2

    goto :goto_c5

    :cond_c2
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_c5
    :goto_c5
    iput v5, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1

    :cond_c8
    :goto_c8
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
