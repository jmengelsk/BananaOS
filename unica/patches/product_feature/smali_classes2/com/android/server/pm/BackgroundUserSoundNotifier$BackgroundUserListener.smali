.class public final Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;
.super Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundUserSoundNotifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->notifyForegroundUserAboutSoundIfNecessary(Landroid/media/AudioFocusInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/BackgroundUserSoundNotifier$BackgroundUserListener;->this$0:Lcom/android/server/pm/BackgroundUserSoundNotifier;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundUserSoundNotifier;->dismissNotificationIfNecessary(I)V

    return-void
.end method
