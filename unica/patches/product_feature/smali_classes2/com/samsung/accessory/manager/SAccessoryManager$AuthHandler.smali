.class public final Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SAccessoryManager_SAccessoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processAuthMessage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v3, :cond_43

    if-eq v2, v6, :cond_3f

    if-eq v2, v5, :cond_3b

    if-eq v2, v4, :cond_37

    packed-switch v2, :pswitch_data_18e

    const/4 v2, 0x0

    goto :goto_46

    :pswitch_23  #0xe
    const-string/jumbo v2, "MSG_DETACHCHECK"

    goto :goto_46

    :pswitch_27  #0xd
    const-string/jumbo v2, "MSG_AUTH_SESSION_STOPPED"

    goto :goto_46

    :pswitch_2b  #0xc
    const-string/jumbo v2, "MSG_AUTH_SESSION_COMPLETE"

    goto :goto_46

    :pswitch_2f  #0xb
    const-string/jumbo v2, "MSG_AUTH_SESSION_STARTED"

    goto :goto_46

    :pswitch_33  #0xa
    const-string/jumbo v2, "MSG_AUTH_SESSION_STARTING"

    goto :goto_46

    :cond_37
    const-string/jumbo v2, "MSG_AUTH_STOP_REQUEST"

    goto :goto_46

    :cond_3b
    const-string/jumbo v2, "MSG_AUTH_RESTART"

    goto :goto_46

    :cond_3f
    const-string/jumbo v2, "MSG_AUTH_START_REQUEST_INTERNAL"

    goto :goto_46

    :cond_43
    const-string/jumbo v2, "MSG_AUTH_START_REQUEST"

    :goto_46
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eq v0, v3, :cond_18a

    if-eq v0, v6, :cond_186

    if-eq v0, v5, :cond_164

    if-eq v0, v4, :cond_125

    packed-switch v0, :pswitch_data_19c

    goto/16 :goto_124

    :pswitch_59  #0xe
    const-string/jumbo p1, "SAccessoryManager_SAccessoryManager"

    const-string v0, "Check auth chip again. Skip detach process if there is no auth chip in this time"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v0

    if-eqz v0, :cond_72

    array-length v0, v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_72

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    return-void

    :cond_72
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :cond_7c
    :goto_7c
    if-ge v0, p1, :cond_124

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v3, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v3, :cond_7c

    const-string/jumbo v3, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo v4, "there is no authentication chip, so do detach process"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZZ)V

    goto :goto_7c

    :pswitch_9d  #0xd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_a4
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b8

    const-string/jumbo v1, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo v2, "session removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    :catchall_b6
    move-exception p0

    goto :goto_d6

    :cond_b8
    :goto_b8
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_cd

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_cd

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_cd
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-eqz p0, :cond_d4

    invoke-interface {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStopped()V

    :cond_d4
    monitor-exit v0

    return-void

    :goto_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_a4 .. :try_end_d7} :catchall_b6

    throw p0

    :pswitch_d8  #0xc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-nez v0, :cond_107

    const-string/jumbo v0, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo v1, "sendIntentToReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_107
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-interface {v0, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    return-void

    :pswitch_10d  #0xb
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-eqz p0, :cond_124

    invoke-interface {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarted()V

    return-void

    :pswitch_119  #0xa
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-eqz p1, :cond_124

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_124
    :goto_124
    return-void

    :cond_125
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_12c
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_156

    monitor-enter p1
    :try_end_135
    .catchall {:try_start_12c .. :try_end_135} :catchall_161

    :try_start_135
    const-string/jumbo p0, "SAccessoryManager_AuthenticationSession"

    const-string/jumbo v1, "stopSession"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_151
    .catchall {:try_start_135 .. :try_end_151} :catchall_153

    :try_start_151
    monitor-exit p1
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_161

    goto :goto_15f

    :catchall_153
    move-exception p0

    :try_start_154
    monitor-exit p1
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    :try_start_155
    throw p0

    :cond_156
    const-string/jumbo p0, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo p1, "The session does not exist! so can\'t stop the session!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15f
    monitor-exit v0

    return-void

    :catchall_161
    move-exception p0

    monitor-exit v0
    :try_end_163
    .catchall {:try_start_155 .. :try_end_163} :catchall_161

    throw p0

    :cond_164
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_16b
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_179

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    goto :goto_182

    :catchall_177
    move-exception p0

    goto :goto_184

    :cond_179
    const-string/jumbo p0, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo p1, "The session does not exist! so can\'t restart the session!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_182
    monitor-exit v0

    return-void

    :goto_184
    monitor-exit v0
    :try_end_185
    .catchall {:try_start_16b .. :try_end_185} :catchall_177

    throw p0

    :cond_186
    invoke-virtual {p0, p1, v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    return-void

    :cond_18a
    invoke-virtual {p0, p1, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    return-void

    :pswitch_data_18e
    .packed-switch 0xa
        :pswitch_33  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_2b  #0000000c
        :pswitch_27  #0000000d
        :pswitch_23  #0000000e
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0xa
        :pswitch_119  #0000000a
        :pswitch_10d  #0000000b
        :pswitch_d8  #0000000c
        :pswitch_9d  #0000000d
        :pswitch_59  #0000000e
    .end packed-switch
.end method
