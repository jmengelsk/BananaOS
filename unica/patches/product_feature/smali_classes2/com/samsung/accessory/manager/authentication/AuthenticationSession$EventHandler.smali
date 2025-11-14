.class public final Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    sget v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMessage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SAccessoryManager_AuthenticationSession"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v0, "connect"

    const/16 v2, 0xc

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo p1, "session is timed out!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleStopSession(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "handleStartSession"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result p1

    if-eq p1, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "can\'t start session, state = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v4, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    iget v1, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    invoke-direct {p1, v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;-><init>(Landroid/content/Context;I)V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "authenticator is not null, so initialize interrupt parameter"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iput-boolean v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->isInterrupted:Z

    :goto_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3, p1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-boolean v6, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->setSessionState(I)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    if-nez p0, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result p1

    if-ne p1, v5, :cond_b

    const-string p1, "Connectivity is turned off while authentication is running!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-boolean v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    const-string p0, "Connectivity is disabled by user"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$mhandleTearDown(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect()V

    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b
    :goto_2
    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "handleSetConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    if-nez p1, :cond_c

    const-string/jumbo p1, "mAuthenticator is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result p1

    if-eq p1, v3, :cond_d

    const-string/jumbo p0, "session is stopped!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    iget v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mType:I

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    if-eq v0, v5, :cond_10

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    goto :goto_3

    :cond_f
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    goto :goto_3

    :cond_10
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    goto :goto_3

    :cond_11
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    goto :goto_3

    :cond_12
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    iget-object v2, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    :goto_3
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectivityStateCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {p1, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->setSessionState(I)V

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_13
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->enable()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I

    return-void

    :cond_14
    const-string/jumbo p1, "enable fail"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;

    invoke-virtual {p1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticatorClientImpl;->setSessionState(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
