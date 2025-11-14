.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field public mSupportsBubble:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_19

    return v1

    :cond_19
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_27
    move-object v4, v5

    :goto_28
    const/4 v6, 0x1

    if-eqz v4, :cond_32

    if-eqz v3, :cond_32

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_45

    :cond_32
    if-eqz v3, :cond_44

    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v4, v3, v2, v7}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_44

    move v3, v6

    goto :goto_45

    :cond_44
    move v3, v1

    :goto_45
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_53

    if-nez v3, :cond_53

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    return v1

    :cond_53
    if-eqz v3, :cond_56

    return v6

    :cond_56
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v3, "BubbleExtractor"

    if-nez v0, :cond_73

    const-string/jumbo p0, "Unable to create bubble -- no intent"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_73
    iget-object p0, p0, Lcom/android/server/notification/BubbleExtractor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_7d

    iget-object v5, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_7d
    const/16 p0, 0xad

    if-nez v5, :cond_97

    invoke-static {p0, v2, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_97
    iget p1, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p1

    if-nez p1, :cond_b6

    const/4 p1, 0x2

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b6
    return v6
.end method

.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    const-string/jumbo p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110275

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 10

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_18

    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v0, :cond_f

    goto :goto_18

    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-nez v0, :cond_14

    goto :goto_18

    :cond_14
    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_19

    :goto_18
    return-object v1

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_41

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v3

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    check-cast v4, Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    check-cast p0, Lcom/android/server/notification/PreferencesHelper;

    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_63
    invoke-virtual {p0, v6, v5}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_bd

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v4, :cond_8e

    if-eqz p0, :cond_8e

    if-nez v0, :cond_73

    goto :goto_8e

    :cond_73
    if-nez v5, :cond_78

    iput-boolean v3, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    goto :goto_9b

    :cond_78
    if-ne p0, v3, :cond_84

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    if-eqz p0, :cond_81

    move v2, v3

    :cond_81
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    goto :goto_9b

    :cond_84
    const/4 v0, 0x2

    if-ne p0, v0, :cond_9b

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    goto :goto_9b

    :cond_8e
    :goto_8e
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-nez v0, :cond_9b

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V

    :cond_9b
    :goto_9b
    iget-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-eqz p0, :cond_b0

    iget-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    if-nez p0, :cond_b0

    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object v1

    :cond_b0
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object v1

    :catchall_bd
    move-exception p0

    :try_start_be
    monitor-exit v7
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
