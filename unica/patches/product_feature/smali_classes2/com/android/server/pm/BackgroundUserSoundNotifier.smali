.class public final Lcom/android/server/pm/BackgroundUserSoundNotifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

.field mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field mNotificationClientUid:I

.field public final mNotificationClientUids:Ljava/util/Set;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field public final mSystemUserContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUid:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "bg_user_sound_channel"

    const-string v3, "BackgroundUserSound"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;-><init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;Landroid/app/ActivityManager;)V

    const-string/jumbo v0, "com.android.server.ACTION_MUTE_BG_USER"

    const-string/jumbo v2, "com.android.server.ACTION_SWITCH_TO_USER"

    const-string/jumbo v3, "com.android.server.ACTION_DISMISS_NOTIFICATION"

    invoke-static {v0, v2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;-><init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$Builder;

    invoke-direct {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setAudioPolicyFocusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;)V

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "Could not register the service\'s focus control audio policy, error: "

    const-string v0, "BackgroundUserSoundNotifier"

    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createNotification(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/Notification;
    .locals 6

    const v0, 0x1040245

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string/jumbo v1, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {p0, p3, v1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v2, "com.android.server.ACTION_DISMISS_NOTIFICATION"

    invoke-virtual {p0, p3, v2}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p3

    new-instance v2, Landroid/app/Notification$Action$Builder;

    const v3, 0x1040242

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v5, 0x1040243

    invoke-virtual {p2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-string/jumbo v5, "bg_user_sound_channel"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x10803da

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "reminder"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x106001c

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/app/Notification$Action;

    aput-object v2, p0, v0

    aput-object v1, p0, v4

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    new-array p0, v4, [Landroid/app/Notification$Action;

    aput-object v2, p0, v0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final createPendingIntent(ILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "com.android.server.EXTRA_CLIENT_UID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const/high16 p2, 0x4000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public dismissNotificationIfNecessary(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "BackgroundUserSoundNotifier"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;
    .locals 2

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getFocusStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioFocusInfo;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioPolicyFocusListener()Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mBgUserListener:Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;

    return-object p0
.end method

.method public muteAlarmSounds(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlayerProxy;->stop()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->getAudioFocusInfoForNotification(I)Landroid/media/AudioFocusInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mFocusControlAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioPolicy;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;)V

    :cond_2
    return-void
.end method

.method public notifyForegroundUserAboutSoundIfNecessary(Landroid/media/AudioFocusInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mSystemUserContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    :goto_0
    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v3

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->createNotification(Ljava/lang/String;Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "BackgroundUserSoundNotifier"

    invoke-virtual {v2, v0, v3, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_2
    :goto_1
    return-void
.end method
