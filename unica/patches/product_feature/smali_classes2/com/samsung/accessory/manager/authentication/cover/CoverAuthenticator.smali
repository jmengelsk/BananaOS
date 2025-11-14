.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.super Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;


# static fields
.field public static final BRAND_NAME:Ljava/lang/String;

.field public static final RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

.field public static USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z


# instance fields
.field public currentHall:I

.field public mAuthType:I

.field public final mAuthenticationHistory:Ljava/util/LinkedList;

.field public final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

.field public final mContext:Landroid/content/Context;

.field public final mCoverAttachProcessHanlder:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field public mCoverAttachedWhenNanos:J

.field public final mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

.field public mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field public mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

.field public final mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateByNfc:I

.field public mCoverStateBySensor:I

.field public mCoverType:I

.field public mCurrentPowerSouce:I

.field public mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

.field public final mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

.field public mFactoryIntent:Landroid/content/Intent;

.field public final mFactoryReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

.field public mFactoryTestRequested:Z

.field public mFailuresCount:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public mIsFactoryBinary:Z

.field public mIsSensor:Z

.field public volatile mIsShutingdown:Z

.field public mLastAttachTime:J

.field public volatile mLastAuthenticationTime:J

.field public mLastCoverState:Lcom/samsung/android/cover/CoverState;

.field public mLastDetachTime:J

.field public mNfcServiceReady:Z

.field public mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

.field public mPowerManager:Landroid/os/PowerManager;

.field public volatile mPreparing:Z

.field public mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

.field public final mResult:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRetryCounterFactoryTest:I

.field public mRetryCounterWhenBusy:I

.field public mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mScheduledAuthReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

.field public mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public mSensor:Landroid/hardware/Sensor;

.field public final mSensorEventListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

.field public final mSensorHistory:Ljava/util/LinkedList;

.field public mSystemReady:Z

.field public mUriData:[B

.field public modelName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_f
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static -$$Nest$mhandleAuthResponse(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "handleAuthResponse"

    const-string/jumbo v2, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-nez v1, :cond_23

    const-string/jumbo v1, "handleAuthResponse, mCurrentSession is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_23
    iget-boolean v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    if-ge v1, v3, :cond_3a

    const-string/jumbo v1, "This is unlikely indicates that cover is detached while authenticating"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_3a
    move-object/from16 v1, p1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "reason"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-boolean v5, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const-wide/16 v6, 0x12c

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_96

    iget-boolean v5, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    if-eqz v5, :cond_96

    new-instance v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    invoke-direct {v5, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    if-nez v4, :cond_6a

    iget-boolean v1, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    if-eqz v1, :cond_6a

    goto :goto_7f

    :cond_6a
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    if-ge v1, v8, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleAuthResponse : Retry startAuthentication counter = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    invoke-static {v1, v4, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {v0, v6, v7, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    goto :goto_8b

    :cond_7f
    :goto_7f
    iput-boolean v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendFactoryResult()V

    :goto_8b
    iget v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_96
    new-instance v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v10, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    invoke-direct {v5, v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    iget-object v10, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const-string/jumbo v11, "auth reason = "

    if-nez v4, :cond_191

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    iget-object v7, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    iget-object v8, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v7

    iget-boolean v8, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    if-eqz v8, :cond_c4

    if-nez v6, :cond_c4

    if-nez v7, :cond_c4

    move v6, v3

    goto :goto_df

    :cond_c4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "Is ID valid ? "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    const-string v15, ", isKeyBlocked ? "

    const-string v12, ", isPackageBlocked? "

    invoke-static {v8, v14, v15, v6, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    :goto_df
    iget-byte v7, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->reserved:B

    const/16 v8, 0x11

    if-ne v7, v8, :cond_e8

    iput v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    goto :goto_ea

    :cond_e8
    iput v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    :goto_ea
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v7

    if-ne v7, v3, :cond_170

    const/4 v7, 0x7

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v7, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v7, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->year:I

    iget-boolean v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-eqz v8, :cond_103

    const-string/jumbo v7, "factory binary"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    :cond_103
    sget-object v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->BRAND_NAME:Ljava/lang/String;

    if-eqz v8, :cond_111

    const-string/jumbo v10, "Note10"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_111

    goto :goto_15d

    :cond_111
    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string/jumbo v10, "SM-N935"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_146

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string/jumbo v10, "SM-N960"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_146

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string/jumbo v10, "SM-G97"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_146

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string/jumbo v10, "SM-G960"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_146

    iget-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    const-string/jumbo v10, "SM-G965"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    :cond_146
    const/16 v8, 0x10

    if-ge v7, v8, :cond_15d

    const-string/jumbo v4, "This cover is not available"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    iget v4, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    iget v6, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {v0, v4, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    goto :goto_183

    :cond_15d
    :goto_15d
    iget v7, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {v0, v4, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Accessory = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-static {v7, v8, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v9, v6

    goto :goto_183

    :cond_170
    const/16 v4, 0x5c

    invoke-virtual {v1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    iget v4, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    iget v6, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {v0, v4, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    iput v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const-string v6, "Authentication is success, but Accessory is detached."

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_183
    invoke-static {v4, v11, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_272

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->sendCoverStateToSensorhub(C)V

    goto/16 :goto_272

    :cond_191
    iget v12, v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {v0, v4, v12}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v3, :cond_1a9

    goto/16 :goto_272

    :cond_1a9
    const/16 v11, 0xb

    if-eq v4, v11, :cond_26b

    const/16 v11, 0x1e

    if-ne v4, v11, :cond_1b3

    goto/16 :goto_26b

    :cond_1b3
    const/16 v2, 0x1f

    if-ne v4, v2, :cond_1bf

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_271

    :cond_1bf
    const/16 v2, 0xc

    if-ne v4, v2, :cond_1cb

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_272

    :cond_1cb
    const/16 v2, 0xd

    const/4 v11, 0x5

    if-ne v4, v2, :cond_206

    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    if-ge v2, v8, :cond_1fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1fc

    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v2

    if-nez v2, :cond_1e7

    goto/16 :goto_271

    :cond_1e7
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v11, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v2, 0x1388

    invoke-virtual {v10, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_271

    :cond_1fc
    iput v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_272

    :cond_206
    const/16 v2, 0x14

    const/16 v3, 0xa

    const/16 v8, 0x16

    if-eq v4, v2, :cond_256

    const/16 v2, 0x15

    if-eq v4, v2, :cond_256

    if-eq v4, v8, :cond_256

    const/16 v2, 0x17

    if-eq v4, v2, :cond_256

    const/16 v2, 0x18

    if-eq v4, v2, :cond_256

    const/16 v2, 0x20

    if-eq v4, v2, :cond_256

    if-eq v4, v3, :cond_256

    const/16 v2, 0x5a

    if-eq v4, v2, :cond_256

    const/16 v2, 0x19

    if-eq v4, v2, :cond_256

    const/16 v2, 0x1a

    if-eq v4, v2, :cond_256

    const/16 v2, 0x1b

    if-eq v4, v2, :cond_256

    const/16 v2, 0x28

    if-eq v4, v2, :cond_256

    const/16 v2, 0x29

    if-eq v4, v2, :cond_256

    const/16 v2, 0x2a

    if-eq v4, v2, :cond_256

    const/16 v2, 0x2b

    if-eq v4, v2, :cond_256

    const/16 v2, 0x2c

    if-eq v4, v2, :cond_256

    const/16 v2, 0x2d

    if-eq v4, v2, :cond_256

    const/16 v2, 0x2e

    if-eq v4, v2, :cond_256

    const/16 v2, 0x5e

    if-eq v4, v2, :cond_256

    const/16 v2, 0x5f

    if-ne v4, v2, :cond_271

    :cond_256
    if-eq v4, v8, :cond_261

    if-eq v4, v3, :cond_261

    const/16 v2, 0xe

    if-ne v4, v2, :cond_25f

    goto :goto_261

    :cond_25f
    const-wide/16 v6, 0x3e8

    :cond_261
    :goto_261
    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_271

    invoke-virtual {v0, v6, v7, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    goto :goto_271

    :cond_26b
    :goto_26b
    const-string/jumbo v3, "do nothing.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_271
    :goto_271
    move v3, v9

    :cond_272
    :goto_272
    if-eqz v3, :cond_285

    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    if-nez v2, :cond_27e

    invoke-virtual {v0, v9, v5, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :goto_27b
    const-wide/16 v12, 0x0

    goto :goto_282

    :cond_27e
    invoke-virtual {v0, v9, v5, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_27b

    :goto_282
    invoke-virtual {v0, v12, v13}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->stopAuthentication(J)V

    :cond_285
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static -$$Nest$mhandleAuthStart(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "handleAuthStart"

    const-string/jumbo v1, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const/4 v2, 0x1

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v0

    if-ge v0, v2, :cond_28

    const-string/jumbo v0, "This is unlikely indicates that cover is detached while starting auth"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-virtual {v3, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_41

    if-eq v0, v2, :cond_41

    const-string/jumbo v0, "session is busy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_41
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v3, v1}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I

    move-result v1

    if-ne v1, v4, :cond_5e

    const-string/jumbo v1, "connectivity_type"

    invoke-static {v2, v1}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v3, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    goto :goto_65

    :cond_5e
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;->start(Landroid/os/Message;)V

    :goto_65
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public static -$$Nest$minitialize(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Initialize cover authenticator"

    const-string/jumbo v1, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-instance v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;

    invoke-direct {v2, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    sget-object v4, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    sput-object v3, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const-string/jumbo v3, "cover_pubkey_blocklist"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "cover_authentication_blocked"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;

    invoke-direct {v4, v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    sput-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRestrictionPolicyOberver:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    sput-object p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nfc restriction policy = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    invoke-static {v1, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "SAccessoryManager_CoverAuthenticatorDetachTimeoutWakeLock"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_b0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    :cond_b0
    sput-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.accessory.manager.action.AUTHENTICATION_STATE_REQUEST"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.accessory.manager.action.START_AUTHENTICATION"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v10, "com.samsung.accessory.manager.permission.AUTHENTICATION_CONTROL"

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.nfc.INIT_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.android.nfc.action.COVER_AUTH_READY"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "ro.product.vendor.device"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "q2q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    const-string/jumbo v1, "v2q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    :cond_12a
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    :cond_133
    iput-boolean v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    return-void
.end method

.method public static -$$Nest$misAuthenticationBlocked(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z
    .registers 7

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_c

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    return v3

    :cond_c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    const-string/jumbo v2, "SAccessoryManager_CoverAuthenticator"

    if-eqz v0, :cond_1e

    const-string p0, "Authentication is blocked"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1e
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    if-nez v0, :cond_3b

    const/4 v4, 0x2

    if-nez v0, :cond_26

    move v1, v4

    :cond_26
    if-ne v1, v4, :cond_35

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    const-wide/16 v4, 0x3e8

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    const-string p0, "Authentication is blocked.. type = "

    invoke-static {v1, p0, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3b
    return v1
.end method

.method public static -$$Nest$monNfcReady(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v2

    const-string/jumbo v3, "SAccessoryManager_CoverAuthenticator"

    if-nez v2, :cond_11

    goto :goto_3f

    :cond_11
    if-lt v1, v0, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ready to authenticate the cover "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-static {v1, v2, v3}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(JZ)V

    goto :goto_3f

    :cond_39
    const-string/jumbo v0, "ready to authenticate the cover but a cover attach state is "

    invoke-static {v1, v0, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3f
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_69

    const v1, 0x10067

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_69

    const-string/jumbo v1, "registerListener sensor"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorEventListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_69
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".action.AUTHENTICATION_INTERVAL_ELAPSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->RUN_SCHEDULED_AUTH_ACTION:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->USE_SCHEDULED_AUTHENTICATION_WEHN_CHARGING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->BRAND_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    const-string/jumbo v2, "Samsung Mobile"

    iput-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->modelName:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    iput-wide v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachedWhenNanos:J

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterWhenBusy:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mRetryCounterFactoryTest:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    iput v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorEventListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mScheduledAuthReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryReceiver:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$5;

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    new-instance p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {p2, p0, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance p2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-direct {p2, p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    new-instance p2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance p2, Lcom/samsung/accessory/manager/DetachCheck;

    invoke-direct {p2, p1}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    return-void
.end method

.method public static setTransmitPower(Z)V
    .registers 4

    const-string v0, "Call SemTelephony API : is verified :"

    :try_start_2
    const-string/jumbo v1, "SAccessoryManager_CoverAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    const-wide/16 v1, 0x4000

    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final addRecord(II)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCurrentPowerSouce:I

    invoke-static {v2, p2, p1, p1, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, " Current CoverAuthenticator state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  auth reason = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    const-string v3, "  auth uri = "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    const-string v3, "  auth extra data = "

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2b
    const-string v0, "  Historical authentication: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_32
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const-string v3, "    "

    if-ge v1, v2, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthenticationHistory:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_56
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_82

    const-string v1, "  Magnetic sensor: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_60
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensorHistory:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mNfcServiceReady = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    const-string v3, "  mFactoryTestRequested = "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryTestRequested:Z

    const-string v3, "  mLastAuthenticationTime = "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    const-string v4, "  isAuthenticatonAllowed? = "

    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    const-string v3, "  getBlockedType? = "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    if-nez v2, :cond_ae

    const/4 v0, 0x2

    :cond_ae
    const-string v2, "  isAuthenticationBlocked? = "

    invoke-static {v1, v0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mBlocklister:Lcom/samsung/accessory/manager/authentication/CertBlocklister;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    const-string v2, "  mLastAttachTime = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mLastDetachTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mFailuresCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    const-string v2, "  mIsFactoryBinary = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const-string v2, "  mSensor = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mIsSensor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    const-string v2, "  mLastCoverState = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    if-eqz v0, :cond_138

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mRealCoverType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_138
    return-void
.end method

.method public final getCoverSwitchState()I
    .registers 5

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/16 v1, -0x100

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    return p0

    :cond_15
    :goto_15
    iget-object p0, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v0, 0x1b

    invoke-interface {p0, v2, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0

    :cond_1e
    iget-object p0, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v0, 0x15

    invoke-interface {p0, v2, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final isAuthenticationReady()Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isAuthenticationReady: isSystemReady = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNfcServiceReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShutingdown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    const-string/jumbo v2, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSystemReady:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mNfcServiceReady:Z

    if-eqz v0, :cond_32

    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsShutingdown:Z

    if-nez p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyFriendsStateChanged(Z[B[B)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v0, :cond_e

    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v0, :cond_7f

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1d

    goto :goto_33

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.accessory.manager.action.SEND_ATTACH_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isAttached"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->accessoryStateChanged(Z[B[B)V

    :try_start_38
    new-instance p3, Landroid/content/ComponentName;

    const-string/jumbo v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string/jumbo v1, "com.sec.enterprise.knox.cloudmdm.smdms.core.AccessoryStateChangeReceiver"

    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    const-string/jumbo v0, "accessoryType"

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "accessoryState"

    if-eqz p1, :cond_5c

    const/16 p1, 0x3e9

    goto :goto_5e

    :cond_5c
    const/16 p1, 0x3ea

    :goto_5e
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "accessoryUid"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo p1, "from"

    const-string/jumbo p2, "com.samsung.accessory.manager.authentication"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_75} :catch_76

    goto :goto_7f

    :catch_76
    const-string/jumbo p0, "SAccessoryManager_CoverAuthenticator"

    const-string/jumbo p1, "error during starting KES service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    return-void
.end method

.method public final onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 3

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onAuthenticationStarted()V
    .registers 3

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAuthenticationStopped()V
    .registers 3

    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCoverAttached(JZZ)V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const-string/jumbo v1, "onCoverAttached : attached = "

    const-string v2, ", isFactoryBinary = "

    invoke-static {v1, v2, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    const-string v3, ", isSensor = "

    const-string v4, ", mSensor = "

    invoke-static {v1, v2, v3, p4, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsFactoryBinary:Z

    if-nez v1, :cond_df

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_df

    :cond_30
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_48

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    if-ne v1, p4, :cond_3d

    goto :goto_48

    :cond_3d
    const-string/jumbo p1, "onCoverAttached event is skip."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    return-void

    :cond_48
    :goto_48
    iput-boolean p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    if-eqz p4, :cond_5b

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_5b

    const-string/jumbo p1, "onCoverAttached: mSensor is null."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    return-void

    :cond_5b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "when"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAttachProcessHanlder:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 p2, 0x1

    if-nez p3, :cond_ba

    iput p2, v1, Landroid/os/Message;->what:I

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p4, :cond_90

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-eqz p2, :cond_97

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    invoke-static {p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->isDataChanged(Landroid/content/Context;[B)Z

    move-result p2

    if-eqz p2, :cond_97

    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->disableSetting()V

    goto :goto_97

    :cond_90
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSafetyDetachTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 p3, 0x7d0

    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_97
    :goto_97
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-eqz p2, :cond_b4

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "accessory_cover_uri"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b4

    const-wide/16 p2, 0x32

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_b4
    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_ba
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_da

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p3

    if-eqz p3, :cond_da

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {p3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p3

    iget-boolean p3, p3, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz p3, :cond_da

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addRecord(II)V

    return-void

    :cond_da
    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_df
    :goto_df
    return-void
.end method

.method public final removeAuthenticationTimeOuts()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final sendCoverStateToSensorhub(C)V
    .registers 7

    const-string v0, "File write fail "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendCoverStateToSensorhub: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mIsSensor:Z

    if-nez v1, :cond_22

    const-string/jumbo p0, "sendCoverStateToSensorhub:skip"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const/16 v1, 0x30

    if-ne p1, v1, :cond_28

    const/4 v1, 0x0

    goto :goto_29

    :cond_28
    const/4 v1, 0x1

    :goto_29
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateByNfc:I

    const/4 p0, 0x0

    :try_start_2c
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sensors/flip_cover_detector_sensor/nfc_cover_status"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_45
    .catchall {:try_start_2c .. :try_end_33} :catchall_41

    :try_start_33
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_3f
    .catchall {:try_start_33 .. :try_end_39} :catchall_3d

    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_5b

    goto :goto_5b

    :catchall_3d
    move-exception p0

    goto :goto_6e

    :catch_3f
    move-exception p0

    goto :goto_49

    :catchall_41
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_6e

    :catch_45
    move-exception v1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_49
    :try_start_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_3d

    if-eqz v1, :cond_5b

    goto :goto_39

    :catch_5b
    :cond_5b
    :goto_5b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendCoverStateToSensorhub:END"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_6e
    if-eqz v1, :cond_73

    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_73

    :catch_73
    :cond_73
    throw p0
.end method

.method public final sendFactoryResult()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SAccessoryManager_CoverAuthenticator"

    if-nez v0, :cond_e

    const-string/jumbo p0, "factory intent is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const-string v3, ""

    if-eqz v2, :cond_4f

    array-length v4, v2

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_27
    array-length v6, v2

    if-ge v5, v6, :cond_3c

    aget-byte v6, v2, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02x"

    const/4 v8, 0x1

    invoke-static {v7, v6, v4, v5, v8}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v5

    goto :goto_27

    :cond_3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    const/16 v5, 0x12

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Service ID = "

    invoke-static {v4, v2, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_4f
    move-object v2, v3

    :goto_50
    const-string/jumbo v1, "NG_NFC"

    if-eqz v0, :cond_8a

    new-instance v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;

    iget-object v5, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    invoke-direct {v4, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;-><init>([B)V

    iget v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    if-nez v0, :cond_6f

    iget-boolean v5, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    if-eqz v5, :cond_6f

    iget-object v0, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    iget-object v1, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->id:Ljava/lang/String;

    const-string/jumbo v3, "OK"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_6f
    if-nez v0, :cond_7c

    iget-boolean v2, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->valid:Z

    if-nez v2, :cond_7c

    const-string/jumbo v0, "NG_ID"

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_7c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_86

    const-string/jumbo v0, "NG_KEY"

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_86
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_8a
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final setCoverResultForIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "result_factory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo v0, "serial_factory"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo p2, "id_factory"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string/jumbo p2, "serviceid_factory"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_2b

    const-string/jumbo p1, "OK"

    goto :goto_2e

    :cond_2b
    const-string/jumbo p1, "NG"

    :goto_2e
    iget-object p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    const-string p3, ", "

    invoke-static {p1, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAttachTime:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v7, 0x0

    cmp-long v1, p3, v7

    const-string v9, ""

    const-string v10, "%ty-%tm-%td %tH:%tM:%tS.%tL"

    if-lez v1, :cond_58

    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v10, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_59

    :cond_58
    move-object p3, v9

    :goto_59
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "attachInfo"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFactoryIntent:Landroid/content/Intent;

    iget-wide p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastDetachTime:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    cmp-long p0, p2, v7

    if-lez p0, :cond_83

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v10, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_83
    const-string/jumbo p0, "detachInfo"

    invoke-virtual {p1, p0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public final setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v4, :cond_18

    if-eqz v1, :cond_18

    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    iput v7, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    if-ne v7, v6, :cond_18

    iput v5, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    :cond_18
    new-instance v4, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v4}, Lcom/samsung/android/cover/CoverState;-><init>()V

    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverState;->setFakeCover(Z)V

    if-eqz v2, :cond_2a

    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_2a

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setTransmitPower(Z)V

    :cond_2a
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_33

    move v7, v8

    goto :goto_34

    :cond_33
    move v7, v5

    :goto_34
    const-string/jumbo v9, "setCoverVerified isVerified: "

    const-string v10, ", type:"

    invoke-static {v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_46

    iget v10, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_49

    :cond_46
    const-string/jumbo v10, "null"

    :goto_49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", isCoverAttached:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SAccessoryManager_CoverAuthenticator"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_77

    iget v9, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    const/16 v11, 0xe

    if-ne v9, v11, :cond_77

    iget-object v9, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v11, "com.sec.feature.nfc_suitled_authentication_cover"

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_77

    move v9, v8

    goto :goto_78

    :cond_77
    move v9, v5

    :goto_78
    if-eqz v2, :cond_80

    iget v11, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_82

    :cond_80
    if-eqz v9, :cond_84

    :cond_82
    move v11, v8

    goto :goto_85

    :cond_84
    move v11, v5

    :goto_85
    const-string/jumbo v12, "is_SUITE_LED = "

    const-string v13, ", mPaletteCover = "

    invoke-static {v12, v13, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "CoverManager_"

    const-string v13, ""

    const/4 v14, 0x2

    const/4 v15, 0x0

    move/from16 v16, v6

    if-eqz v11, :cond_12f

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-eqz v6, :cond_aa

    if-eqz v7, :cond_12f

    :cond_aa
    if-nez v6, :cond_b5

    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    :cond_b5
    iget-object v6, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    iget-boolean v7, v7, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    if-eqz v7, :cond_d8

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->isDataChanged(Landroid/content/Context;[B)Z

    move-result v6

    if-eqz v6, :cond_d8

    const-string/jumbo v6, "Palette Cover changed, force detach first"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "palette cover detach by data change"

    invoke-static {v12, v6}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {v6, v5, v15}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :cond_d8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Palette Cover attached info = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v7, :cond_e9

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_ea

    :cond_e9
    move-object v7, v13

    :goto_ea
    invoke-static {v6, v7, v10}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    iget-boolean v6, v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    if-nez v6, :cond_11f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "palette cover attach"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v7, :cond_104

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_105

    :cond_104
    move-object v7, v13

    :goto_105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    iput v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {v6, v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    if-nez v9, :cond_11f

    invoke-virtual {v4, v14}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    iput v14, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    :cond_11f
    if-nez v9, :cond_18c

    iget-object v1, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-eqz v1, :cond_12e

    iget-boolean v1, v1, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    if-eqz v1, :cond_12e

    iput-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v8}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    :cond_12e
    return-void

    :cond_12f
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-nez v6, :cond_14c

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v14, "accessory_cover_uri"

    invoke-static {v6, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14c

    if-eqz v7, :cond_15a

    if-eqz v11, :cond_15a

    if-eqz v1, :cond_15a

    :cond_14c
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-eqz v6, :cond_18c

    iget-boolean v6, v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    if-eqz v6, :cond_18c

    if-eqz v7, :cond_15a

    if-eqz v11, :cond_15a

    if-nez v1, :cond_18c

    :cond_15a
    const-string/jumbo v6, "Palette Cover detached"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "palette cover detach"

    invoke-static {v12, v6}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    if-nez v6, :cond_173

    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    iget-object v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    :cond_173
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {v6, v5, v15}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    iput-object v15, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPaletteCover:Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    iput-object v15, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v11, :cond_186

    if-nez v1, :cond_181

    goto :goto_186

    :cond_181
    if-nez v9, :cond_18c

    iput-object v15, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    return-void

    :cond_186
    :goto_186
    const-string/jumbo v6, "Palette Cover detached by other cover"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18c
    const/4 v9, -0x1

    if-eqz v1, :cond_38a

    invoke-virtual {v4, v8}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    iget v11, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->color:I

    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setColor(I)V

    iget v11, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->model:I

    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setModel(I)V

    iget-object v11, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverAppUri(Ljava/lang/String;)V

    iget-object v11, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    invoke-virtual {v4, v11}, Lcom/samsung/android/cover/CoverState;->setSmartCoverCookie([B)V

    iget-object v11, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    iput-object v11, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/16 v12, 0x17

    if-eqz v11, :cond_1b8

    array-length v14, v11

    if-ne v14, v12, :cond_1b8

    aget-byte v14, v11, v16

    const/16 v17, 0x5

    aget-byte v11, v11, v17

    goto :goto_1ba

    :cond_1b8
    move v11, v9

    move v14, v11

    :goto_1ba
    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1d6

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.cover.clearsideviewcover"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    const/16 v6, 0xf

    iput v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    :cond_1d6
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_1fa

    iget v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    if-eq v6, v7, :cond_1fa

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "force detach event, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    invoke-static {v6, v7, v10}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {v0, v5, v15, v15}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :cond_1fa
    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    iput v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    iget v7, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->smapp:I

    const/4 v15, 0x3

    if-nez v7, :cond_20c

    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    iget-object v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->serial:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setSerialNumber(Ljava/lang/String;)V

    goto :goto_233

    :cond_20c
    if-ne v7, v8, :cond_214

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    goto :goto_233

    :cond_214
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v6, :cond_22f

    if-ne v14, v8, :cond_22f

    if-eq v11, v9, :cond_22f

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    if-ne v11, v8, :cond_226

    invoke-virtual {v4, v8}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    goto :goto_233

    :cond_226
    if-ne v11, v15, :cond_233

    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setFriendsType(I)V

    goto :goto_233

    :cond_22f
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/samsung/android/cover/CoverState;->setType(I)V

    :cond_233
    :goto_233
    iput-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    iget v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    if-nez v6, :cond_2ab

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/PowerManager;->setCoverType(I)V

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v6, :cond_259

    const-class v6, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_259
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    move-object v7, v13

    if-eqz v6, :cond_265

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v1, v4}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    :cond_265
    iget v4, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->type:I

    if-nez v4, :cond_2ac

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_277
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "com.samsung.android.isag.issmanager"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_277

    const-string/jumbo v4, "send to iss manager"

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.isag.issmanager.ACTION_COVER_AUTH"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.android.isag.issmanager.permission.COVER_AUTH"

    invoke-virtual {v6, v4, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2ac

    :cond_2ab
    move-object v7, v13

    :cond_2ac
    :goto_2ac
    iget v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    if-eq v4, v8, :cond_2b5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2b5

    if-ne v4, v15, :cond_321

    :cond_2b5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "coverInfo.getUrl: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_COMPLETE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    const-string/jumbo v9, "cover"

    const-string v12, "DEVICE_TYPE"

    if-eqz v6, :cond_312

    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    if-eqz v6, :cond_30b

    array-length v13, v6

    const/16 v11, 0x17

    if-lt v13, v11, :cond_30b

    aget-byte v10, v6, v8

    const/16 v11, 0x11

    if-lt v10, v11, :cond_304

    const/16 v11, 0x20

    if-ge v10, v11, :cond_304

    aget-byte v6, v6, v16

    const/4 v10, 0x2

    if-ne v6, v10, :cond_2f6

    invoke-virtual {v4, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2fc

    :cond_2f6
    const-string/jumbo v6, "friends"

    invoke-virtual {v4, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2fc
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    iget-object v9, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    invoke-virtual {v0, v8, v6, v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    goto :goto_315

    :cond_304
    const-string/jumbo v6, "smapp"

    invoke-virtual {v4, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_315

    :cond_30b
    const-string/jumbo v6, "uri data is null"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_315

    :cond_312
    invoke-virtual {v4, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_315
    iget-object v6, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverBroadcaster:Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;

    if-eqz v4, :cond_321

    invoke-virtual {v4, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->broadcastCoverAttachStatus(Z)V

    :cond_321
    iget-object v4, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    iget-object v6, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    iget-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->TAG:Ljava/lang/String;

    if-nez v2, :cond_333

    const-string v2, "ID is null.. can not write"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_381

    :cond_333
    iget-object v9, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-static {v9, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_352

    iget-object v9, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-static {v9, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_352

    iget-object v9, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-static {v9, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_352

    const-string/jumbo v2, "same state.. "

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_381

    :cond_352
    array-length v8, v2

    new-array v8, v8, [B

    iput-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    array-length v9, v2

    invoke-static {v2, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v6, :cond_368

    array-length v8, v6

    new-array v8, v8, [B

    iput-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    array-length v9, v6

    invoke-static {v6, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    goto :goto_36b

    :cond_368
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    :goto_36b
    if-eqz v3, :cond_377

    array-length v8, v3

    new-array v8, v8, [B

    iput-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    array-length v9, v3

    invoke-static {v3, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_379

    :cond_377
    iput-object v8, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    :goto_379
    new-instance v8, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;

    invoke-direct {v8, v4, v2, v6, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;[B[B[B)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :goto_381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastAuthenticationTime:J

    iput v5, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mFailuresCount:I

    goto :goto_3eb

    :cond_38a
    move-object v7, v13

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v9}, Lcom/android/server/input/InputManagerService;->setCoverVerify(I)V

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v9}, Landroid/os/PowerManager;->setCoverType(I)V

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_39c

    invoke-virtual {v2, v5}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    :cond_39c
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v3, :cond_3ac

    const-class v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_3ac
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-eqz v3, :cond_3b7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10, v1, v2}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    :cond_3b7
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    const/16 v11, 0x11

    if-ne v2, v11, :cond_3c3

    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setTransmitPower(Z)V

    :cond_3c3
    iget v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    move/from16 v3, v16

    if-eq v2, v3, :cond_3eb

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthStateFile:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v3, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    if-eqz v3, :cond_3eb

    const/16 v4, 0x15

    aget-byte v3, v3, v4

    if-ne v3, v8, :cond_3eb

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    if-eqz v2, :cond_3eb

    aget-byte v2, v2, v8

    const/16 v11, 0x11

    if-lt v2, v11, :cond_3eb

    const/16 v11, 0x20

    if-ge v2, v11, :cond_3eb

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v2, v8}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    iput-object v8, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    :cond_3eb
    :goto_3eb
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_3ff

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverType:I

    invoke-static {v0, v1, v7}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_400

    :cond_3ff
    move-object v13, v7

    :goto_400
    const-string/jumbo v0, "cover_type_id"

    invoke-static {v2, v0, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final setFriendsVerified(ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .registers 7

    const-string/jumbo v0, "SAccessoryManager_CoverAuthenticator"

    const-string/jumbo v1, "setAccessoryVerified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_33

    iget-object p1, p3, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    iget p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1a

    if-eq p3, v0, :cond_1a

    const/4 v2, 0x3

    if-ne p3, v2, :cond_32

    :cond_1a
    iget p3, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->url:I

    if-eqz p3, :cond_32

    if-eqz p1, :cond_32

    array-length p3, p1

    if-lt p3, v0, :cond_32

    aget-byte p3, p1, v1

    const/16 v0, 0x11

    if-lt p3, v0, :cond_32

    const/16 v0, 0x20

    if-ge p3, v0, :cond_32

    iget-object p2, p2, Lcom/samsung/accessory/manager/authentication/cover/CoverInfo;->chip_id:[B

    invoke-virtual {p0, v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    :cond_32
    return-void

    :cond_33
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->notifyFriendsStateChanged(Z[B[B)V

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mUriData:[B

    return-void
.end method

.method public final startAuthentication(JZ)V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->isAuthenticationReady()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p3, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x5

    const-wide/16 v1, 0x6978

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mPreparing:Z

    :cond_1d
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 p3, 0x2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final stopAuthentication(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->removeAuthenticationTimeOuts()V

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final systemReady()V
    .registers 2

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
