.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    const/16 v0, 0x30

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "SAccessoryManager_CoverAuthenticator"

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-string/jumbo v6, "handleMessage = "

    const-wide/16 v7, 0x0

    iget v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;->$r8$classId:I

    packed-switch v9, :pswitch_data_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string/jumbo v10, "when"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    sget-object v11, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v6, :cond_9

    if-eq v6, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "isAuthChipExistBySensor length="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, p1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " response="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v11, p1, v3

    const-string/jumbo v12, "SAccessoryManager_DetachCheck"

    invoke-static {v6, v11, v12}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length v6, p1

    if-ne v6, v2, :cond_3

    aget-byte v6, p1, v3

    const/16 v11, -0x20

    if-eq v6, v11, :cond_2

    const/16 v11, -0x9

    if-eq v6, v11, :cond_2

    const/16 v11, -0xf

    if-eq v6, v11, :cond_2

    const/16 v11, -0xb

    if-eq v6, v11, :cond_2

    const/16 v11, 0x1e

    if-ne v6, v11, :cond_3

    :cond_2
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v6, "0x%02x"

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "NFC Transaction ongoing, response="

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    move p0, v1

    goto :goto_1

    :cond_3
    array-length p1, p1

    const/16 v6, 0x10

    if-ne p1, v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    move p0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    move p0, v3

    :goto_1
    if-ne p0, v2, :cond_5

    const/16 p0, 0xa

    invoke-static {v5, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    const/16 p0, 0x37

    invoke-virtual {v5, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    const-string/jumbo p0, "auth chip exists"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-ne p0, v1, :cond_6

    iget p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    if-ne p0, v2, :cond_6

    const/16 p0, 0x14

    invoke-static {v5, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    iput v2, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    const/16 p0, 0x32

    invoke-virtual {v5, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-eqz p0, :cond_7

    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "accessory_cover_uri"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->disableSetting()V

    :cond_7
    iget-wide p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    cmp-long v0, p0, v7

    if-eqz v0, :cond_8

    sub-long/2addr v9, p0

    const-wide/32 p0, 0x1dcd6500

    cmp-long p0, v9, p0

    if-gez p0, :cond_8

    const-wide/16 v7, 0x1f4

    :cond_8
    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    iput v3, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    invoke-virtual {v5, v7, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    if-eqz p0, :cond_a

    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->broadcastCoverAttachStatus(Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    iput-wide v9, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-virtual {v5, v7, v8, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    :cond_a
    :goto_2
    return-void

    :pswitch_0
    :try_start_0
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->convertMsg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_1
    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :pswitch_2
    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget p0, p1, Landroid/os/Message;->what:I

    if-ne p0, v6, :cond_b

    iget p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    add-int/2addr p0, v2

    iput p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    const/16 p0, 0x5b

    invoke-virtual {v5, p0, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    const-string/jumbo p0, "authentication is timed out!"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_b
    :goto_3
    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-virtual {v5, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    goto :goto_7

    :cond_c
    :pswitch_3
    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    iget-object v0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_d

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result p0

    if-lt p0, v2, :cond_d

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    move p0, v2

    goto :goto_4

    :cond_d
    move p0, v3

    :goto_4
    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    if-lt v0, v2, :cond_f

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v6, :cond_e

    iget p1, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    if-gt p1, v2, :cond_f

    :cond_e
    if-eqz p0, :cond_12

    :cond_f
    iget p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/4 p1, 0x0

    if-nez p0, :cond_10

    invoke-virtual {v5, v3, p1, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_5

    :cond_10
    invoke-virtual {v5, v3, p1, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :goto_5
    iget-object p0, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    invoke-static {v5, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V

    goto :goto_7

    :pswitch_5
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$misAuthenticationBlocked(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {v5, v7, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    goto :goto_7

    :cond_11
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    goto :goto_7

    :pswitch_6
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    sget-object p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "handleMessage Exception = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_12
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
