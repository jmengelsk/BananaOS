.class public final Lcom/android/server/pm/BackgroundUserSoundNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

.field public final synthetic val$activityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;Landroid/app/ActivityManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->val$activityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo p1, "com.android.server.EXTRA_CLIENT_UID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object v0, v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "BackgroundUserSoundNotifier"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p2, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->muteAlarmSounds(I)V

    goto :goto_57

    :cond_2d
    const-string/jumbo v0, "com.android.server.ACTION_SWITCH_TO_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object v0, v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isProfile(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object v0, v0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    :cond_52
    iget-object v0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->val$activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->switchUser(I)Z

    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$1;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier;->mNotificationClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
