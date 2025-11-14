.class public final Lcom/android/server/notification/NotificationAttentionHelper$4;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const-string v1, "Failed playInCallNotification: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    if-eqz v0, :cond_20

    invoke-interface {v4, v0}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    goto :goto_20

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_51

    :catch_1d
    move-exception v0

    move-object p0, v0

    goto :goto_3b

    :cond_20
    :goto_20
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
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_1d
    .catchall {:try_start_6 .. :try_end_37} :catchall_1a

    :cond_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3b
    :try_start_3b
    const-string/jumbo v0, "NotifAttentionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_1a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
