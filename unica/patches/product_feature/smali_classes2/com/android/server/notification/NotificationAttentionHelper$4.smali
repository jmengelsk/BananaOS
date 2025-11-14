.class public final Lcom/android/server/notification/NotificationAttentionHelper$4;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v1, "Failed playInCallNotification: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    if-eqz v0, :cond_0

    invoke-interface {v4, v0}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    iget-object v6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    iget v8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    const-string/jumbo v0, "NotifAttentionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
