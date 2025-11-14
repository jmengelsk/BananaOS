.class public Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public ALLOWANCE_HOVER_TIME:I

.field public ALLOWANCE_RANGE_X:I

.field public ALLOWANCE_RANGE_Y:I

.field public final mAcAutoFloatingIconMode:Z

.field public mAcButtonPressTouchDownTime:J

.field public mAcIsBound:Z

.field public mAcIsFloatingIconEnabled:Z

.field public mAcIsHoverOccuredBeforeTouchDown:Z

.field public mAcIsPenButtonPressed:Z

.field public mAcIsScreenOffMemoShowing:Z

.field public mAcIsTouchDowned:Z

.field public mAcLastStartTime:J

.field public mAcPenButtonPressedTime:J

.field public mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

.field public mAcService:Landroid/os/Messenger;

.field public final mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

.field public mAirGestureListener:Landroid/os/RemoteCallbackList;

.field public mBatteryOnlineStatus:I

.field public mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

.field public final mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

.field public mBootComplete:Z

.field public final mBroadcastReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$1;

.field public final mClearCoverOpened:Z

.field public final mDataExtractionSync:Ljava/lang/Object;

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

.field public mHoverListeners:Landroid/os/RemoteCallbackList;

.field public final mInboxSPen:Z

.field public mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsEnableLockScreenQuickNote:Z

.field public mIsPenInserted:Ljava/lang/Boolean;

.field public mIsPenReversed:Ljava/lang/Boolean;

.field public mLastDoubleTapPosition:Landroid/graphics/Point;

.field public mLastScreenOffDoubleTapTime:J

.field public mMissingMethodFlags:I

.field public final mPenDataStructArray:Ljava/util/List;

.field public final mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

.field public mScreenOffReason:I

.field public final mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public final mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field public mSpenUsingStartTime:J

.field public final mSpenUspLevel:I

.field public final mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public static -$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    goto :goto_4d

    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_9
    :cond_9
    :goto_9
    if-lez v0, :cond_2d

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1d

    :try_start_11
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverEnter()V

    goto :goto_9

    :cond_1d
    const/16 v1, 0xa

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverExit()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2c} :catch_9

    goto :goto_9

    :cond_2d
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mHoverListeners.getRegisteredCallbackCount() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SpenGestureManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void
.end method

.method public static -$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;I)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto/16 :goto_d0

    :cond_a
    const/4 v0, 0x7

    if-ne p2, v0, :cond_d1

    new-instance p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_36
    if-ltz p1, :cond_d0

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    sub-int v4, v2, v3

    if-le v0, v4, :cond_d0

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_d0

    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    sub-int v4, v2, v3

    if-le v0, v4, :cond_d0

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_d0

    iget-wide v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget-wide v4, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    int-to-long v6, p1

    sub-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_cd

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "RawX"

    iget v1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "RawY"

    iget v1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "dictionary service start : hover time = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " y = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {p1, v0, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    iget p2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b3

    goto :goto_d0

    :cond_b3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_b7
    :goto_b7
    if-lez v0, :cond_c7

    add-int/lit8 v0, v0, -0x1

    :try_start_bb
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverStay(II)V
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_c6} :catch_b7

    goto :goto_b7

    :cond_c7
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_d0

    :cond_cd
    move p1, v1

    goto/16 :goto_36

    :cond_d0
    :goto_d0
    return-void

    :cond_d1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static -$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 4

    const-string/jumbo v0, "onFloatingIconSettingChanged : "

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    if-eq p1, v0, :cond_1c

    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-void

    :cond_1c
    :goto_1c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "cause"

    const-string/jumbo v1, "floating_on"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :cond_2e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    return-void
.end method

.method public static -$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .registers 16

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    goto/16 :goto_18d

    :cond_a
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_14f

    const/4 v9, 0x1

    if-eq p2, v9, :cond_151

    const/4 v6, 0x5

    if-eq p2, v6, :cond_14f

    const/4 v6, 0x6

    if-eq p2, v6, :cond_151

    const/4 v4, 0x7

    const-wide/16 v10, 0x0

    if-eq p2, v4, :cond_a4

    const/16 v3, 0x9

    if-eq p2, v3, :cond_67

    const/16 v3, 0xa

    if-eq p2, v3, :cond_27

    goto/16 :goto_18d

    :cond_27
    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v3, :cond_18d

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v3, :cond_18d

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v3, :cond_18d

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/input/InputManager;->semGetScanCodeState(III)I

    move-result v3

    if-nez v3, :cond_18d

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    const/16 v4, 0x3019

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4d
    move-object v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :cond_5d
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    return-void

    :cond_67
    move-object v6, v2

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v1, :cond_90

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v1, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-gtz v1, :cond_90

    iput-boolean v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :cond_89
    const-wide/16 v4, 0x64

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    :cond_90
    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    iget-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v3, v1, v10

    if-lez v3, :cond_a1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_a1

    move v7, v9

    :cond_a1
    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    return-void

    :cond_a4
    iget-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_ae

    if-nez p3, :cond_ae

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    :cond_ae
    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    if-eqz v1, :cond_b4

    goto/16 :goto_18d

    :cond_b4
    if-eqz p3, :cond_c3

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-nez v1, :cond_c3

    iput-boolean v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    return-void

    :cond_c3
    if-nez p3, :cond_18d

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-eqz v1, :cond_18d

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    sub-long/2addr v1, v4

    cmp-long v4, v1, v10

    if-lez v4, :cond_18d

    const-wide/16 v4, 0x320

    cmp-long v1, v1, v4

    if-lez v1, :cond_de

    goto/16 :goto_18d

    :cond_de
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sget-object v4, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v4, v3

    if-ge v1, v4, :cond_fb

    const-string/jumbo v3, "left"

    goto :goto_fe

    :cond_fb
    const-string/jumbo v3, "right"

    :goto_fe
    iget-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    const-string/jumbo v5, "SpenGestureManagerService"

    if-nez v4, :cond_10b

    const-string v0, "Can not start AirCommandUiService. #2"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    sub-long v8, v6, v8

    cmp-long v4, v8, v10

    if-lez v4, :cond_123

    const-wide/16 v10, 0x190

    cmp-long v4, v8, v10

    if-gez v4, :cond_123

    const-string v0, "Can not start AirCommandUiService. #3."

    invoke-static {v0, v8, v9, v5}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_123
    iput-wide v6, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    const-string/jumbo v4, "Start AirCommandUiService. #2"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "cause"

    const-string/jumbo v6, "button_pressed"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "direction"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "button_press_x"

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "button_press_y"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :cond_14f
    move-object v6, v2

    goto :goto_160

    :cond_151
    if-eqz p3, :cond_18d

    iget-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_18d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    return-void

    :goto_160
    if-eqz p3, :cond_169

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    goto :goto_16b

    :cond_169
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    :goto_16b
    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v1, :cond_18d

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v1, :cond_18d

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    if-nez v1, :cond_18d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_186

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :cond_186
    const-wide/16 v4, 0x64

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    :cond_18d
    :goto_18d
    return-void
.end method

.method public static -$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-nez v0, :cond_5

    goto :goto_55

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendDefferedPenDetectionInfo."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget-wide v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    const-string/jumbo v4, "eventTime"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    const-string/jumbo v3, "penName"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iget v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_45
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz v0, :cond_53

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    move-exception v0

    const-string v2, "Failed to send the pen detection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    :goto_53
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    :goto_55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$1;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "SpenGestureManagerService(Context) "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    iput v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    iput v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    new-instance v7, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v9, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v9, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBroadcastReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$1;

    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v6, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    const/16 v6, 0xa

    iput v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    iput v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const/16 v7, 0x12c

    iput v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "SpenGestureManagerService"

    const-string/jumbo v8, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v8, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    rem-int/2addr v8, v6

    const/4 v6, 0x5

    if-ne v8, v6, :cond_93

    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    goto :goto_95

    :cond_93
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    :goto_95
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    new-instance v6, Landroid/view/GestureDetector;

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v10, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v6, v8, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    invoke-direct {v6}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v10, v11, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "input"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputManager;

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    iget v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    if-lez v6, :cond_d9

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    invoke-direct {v6, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    move-object/from16 v8, p2

    invoke-virtual {v8, v6, v3}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_d9
    new-instance v6, Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {v6, v1}, Lcom/android/server/smartclip/BleSpenManager;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "SemInputDeviceManagerService"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v8, "lock_screen_quick_note"

    const/4 v15, -0x2

    invoke-static {v1, v8, v3, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_ff

    move v1, v4

    goto :goto_100

    :cond_ff
    move v1, v3

    :goto_100
    iput-boolean v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.pen.INSERT"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    if-eqz v1, :cond_13e

    const-string/jumbo v1, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_13e
    invoke-virtual {v6}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_14a

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_14a
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {v1, v0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V

    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "air_cmd_use_minimized"

    invoke-static {v8, v9, v3, v15}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const-string/jumbo v10, "air_button_onoff"

    if-eqz v8, :cond_17c

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_17c

    goto :goto_17d

    :cond_17c
    move v4, v3

    :goto_17d
    invoke-static {v0, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v4, "pen_digitizer_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v8, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;

    invoke-direct {v8, v1, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V

    invoke-virtual {v6, v4, v3, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    if-lez v1, :cond_1ab

    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/smartclip/SpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    return-void

    :cond_1ab
    const-string/jumbo v0, "Theme isn\'t supported. Not a spen model."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkChangeSpenThemePermission()V
    .registers 1

    const-string/jumbo v0, "com.samsung.android.permission.CHANGE_SPEN_THEME"

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static checkPermission(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_b

    goto :goto_13

    :cond_b
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    :goto_13
    return-void

    :cond_14
    const-string/jumbo v1, "checkPermission : Requires "

    const-string v2, " permission. caller PID="

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires "

    const-string v2, " permission"

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSmartClipMetaExtractionPermission()V
    .registers 1

    const-string/jumbo v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static getTopMostPackage()Landroid/content/ComponentName;
    .registers 2

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "getTopMostPackage : Failed to get running task info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_21
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static isUidSignature()Z
    .registers 3

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "app_id"

    const-string/jumbo v2, "com.android.server.smartclip"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "extra"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "data"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.android.providers.context"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final canStartAirCommand()Z
    .registers 4

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    if-eqz v0, :cond_1a

    const-string/jumbo p0, "SetupWizard on"

    goto :goto_2c

    :cond_1a
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "FactoryBinary"

    goto :goto_2c

    :cond_23
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-eqz p0, :cond_2b

    const-string/jumbo p0, "ScreenOffMemo on"

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    if-nez p0, :cond_2f

    return v1

    :cond_2f
    const-string v0, "Failed to start AirCommand."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final dispatchPenDetectionInfo(IJJLjava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    iput-wide p2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    iput-object p6, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x3019

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Permission Denial: can\'t dump from from pid="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "android.permission.DUMP"

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AirCommand:"

    const-string p3, "  UspLevel : "

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  InBoxType : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  PenReversed : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  PenInserted : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mAcIsBound : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mAcIsFloatingIconEnabled : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "  mAcIsScreenOffMemoShowing : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getBleSpenAddress()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "getBleSpenAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter p0

    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "BleSpenManager"

    const-string/jumbo v1, "getBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_20

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception v0

    goto :goto_2a

    :cond_22
    :try_start_22
    const-string v0, "/efs/spen/blespen_addr"

    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_20

    monitor-exit p0

    return-object v0

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_20

    throw v0
.end method

.method public final getBleSpenCmfCode()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "getBleSpenCmfCode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter p0

    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "BleSpenManager"

    const-string/jumbo v1, "getBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_20

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_20
    move-exception v0

    goto :goto_2a

    :cond_22
    :try_start_22
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_20

    monitor-exit p0

    return-object v0

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_20

    throw v0
.end method

.method public final getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "no permission to use getCurrentEditorInfo() : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_21
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object p0
.end method

.method public final getCurrentInputContext()Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .registers 2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "no permission to use getCurrentInputContext() : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_21
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object p0
.end method

.method public final getCurrentMissingMethodFlags()I
    .registers 1

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    return p0
.end method

.method public final getScreenOffDoubleTabTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    return-wide v0
.end method

.method public final getScreenOffReason()I
    .registers 1

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    return p0
.end method

.method public final getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 11

    const-string/jumbo v0, "getScrollableRect : Result="

    const-string/jumbo v1, "SpenGestureManagerService"

    const-string/jumbo v2, "getScrollableRect()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v2, 0x0

    :try_start_10
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v4

    new-instance v6, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v7, 0x4

    invoke-direct {v6, v4, v7, v5, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v7, p1

    invoke-interface {v3, v5, v7, v6, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_5d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :catch_5b
    move-exception p0

    goto :goto_64

    :cond_5d
    const-string/jumbo p0, "getScrollableRect : Result is null!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_63} :catch_5b

    return-object v2

    :goto_64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getScrollableAreaInfo : Exception thrown! e = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .registers 12

    const-string/jumbo v0, "getScrollableViewInfo : Result="

    const-string/jumbo v1, "SpenGestureManagerService"

    const-string/jumbo v2, "getScrollableViewInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v2, 0x0

    :try_start_10
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "hashCode"

    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v7, 0x5

    invoke-direct {p2, v4, v7, v5, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v6, p1

    invoke-interface {v3, v5, v6, p2, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_68

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :catch_66
    move-exception p0

    goto :goto_6f

    :cond_68
    const-string/jumbo p0, "getScrollableViewInfo : Result is null!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6e} :catch_66

    return-object v2

    :goto_6f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getScrollableViewInfo : Exception thrown! e = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public final getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .registers 12

    const-string/jumbo v0, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_9d

    if-nez p1, :cond_36

    :try_start_c
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v3

    :cond_36
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v4

    new-instance v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    invoke-direct {v6, v4, p1, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    new-instance p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p3, v4, v5, p4, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-interface {v3, p4, p1, p3, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_90

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    if-eqz p0, :cond_7b

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    if-nez p0, :cond_7c

    const-string/jumbo p1, "SpenGestureManagerService"

    const-string/jumbo p2, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :catchall_79
    move-exception p0

    goto :goto_9b

    :cond_7b
    move-object p0, v1

    :cond_7c
    :goto_7c
    const-string/jumbo p1, "SpenGestureManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object p0

    :cond_90
    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v1

    :goto_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_c .. :try_end_9c} :catchall_79

    :try_start_9c
    throw p0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception p0

    const-string/jumbo p1, "SpenGestureManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getSmartClipDataByScreenRect : Exception thrown! e = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .registers 13

    const-string/jumbo v0, "injectInputEvent : Result="

    const-string/jumbo v1, "android.permission.INJECT_EVENTS"

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_66

    :try_start_c
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {v3, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    move-result v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "events"

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string/jumbo p3, "waitUntilConsume"

    invoke-virtual {v4, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {p3, v3, v5, v6, v4}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    invoke-interface {v2, p1, p2, p3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    if-ne p4, v6, :cond_62

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0, v3}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_59

    const-string/jumbo p1, "SpenGestureManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :catchall_57
    move-exception p0

    goto :goto_64

    :cond_59
    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "injectInputEvent : Result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    monitor-exit v1

    return-void

    :goto_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_57

    :try_start_65
    throw p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    const-string/jumbo p1, "SpenGestureManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "injectInputEvent : Exception thrown! e = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final isSpenInserted()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSpenReversed()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSupportBleSpen()Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p0

    const-string/jumbo v0, "isSupportBleSpen : "

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v0, v1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final notifyAirGesture(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    const-string/jumbo v1, "SpenGestureManagerService"

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "no permission to use notifyAirGesture() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_25

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyAirGesture :  i: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_43
    :goto_43
    if-lez v0, :cond_53

    add-int/lit8 v0, v0, -0x1

    :try_start_47
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IAirGestureListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IAirGestureListener;->onGesture(Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_43

    goto :goto_43

    :cond_53
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyBleSpenChargeLockState(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyBleSpenChargeLockState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_1d

    goto :goto_36

    :cond_1d
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_21
    :goto_21
    if-lez v0, :cond_31

    add-int/lit8 v0, v0, -0x1

    :try_start_25
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;->onChanged(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_21

    goto :goto_21

    :cond_31
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_36
    return-void
.end method

.method public final notifyKeyboardClosed()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$9;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .registers 4

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    const-string/jumbo v1, "SpenGestureManagerService"

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "no permission to use registerAirGestureListener() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string/jumbo v0, "registerAirGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_31

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    :cond_31
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .registers 3

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_e

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    :cond_e
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .registers 3

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_e

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    :cond_e
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .registers 3

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "no permission to use registerInputMethodInfoChangeListener() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SpenGestureManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    :cond_2b
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final resetPenAttachSound(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public final resetPenDetachSound(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_12

    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public final resetPenHoverIcon(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_13

    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_13

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    :cond_13
    :goto_13
    return-void
.end method

.method public final saveBleSpenLogFile([B)V
    .registers 7

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "saveBleSpenLogFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    const-string/jumbo v0, "saveBleSpenLogFile fail : "

    const-string/jumbo v1, "saveBleSpenLogFile : "

    const-string/jumbo v2, "saveBleSpenLogFile : length="

    monitor-enter p0

    if-eqz p1, :cond_bf

    :try_start_1a
    const-string v3, "BleSpenManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/log/spen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5d

    const-string v3, "BleSpenManager"

    const-string/jumbo v4, "saveBleSpenLogFile : failed to make dirs"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catchall_5b
    move-exception p1

    goto :goto_c9

    :cond_5d
    :goto_5d
    invoke-static {v2}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Spen_dumpState.log"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_1a .. :try_end_7c} :catchall_5b

    :try_start_7c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_9c

    :try_start_81
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v3}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    const-string p1, "BleSpenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_81 .. :try_end_98} :catchall_9e

    :try_start_98
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_bd

    :catchall_9c
    move-exception p1

    goto :goto_a8

    :catchall_9e
    move-exception p1

    :try_start_9f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a7

    :catchall_a3
    move-exception v1

    :try_start_a4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a7
    throw p1
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_9c

    :goto_a8
    :try_start_a8
    const-string v1, "BleSpenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a8 .. :try_end_bd} :catchall_5b

    :goto_bd
    monitor-exit p0

    return-void

    :cond_bf
    :try_start_bf
    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "saveBleSpenLogFile : no buffer"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_5b

    monitor-exit p0

    return-void

    :goto_c9
    :try_start_c9
    monitor-exit p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_5b

    throw p1
.end method

.method public final screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .registers 16

    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo v0, "screenshot()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    new-instance p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;-><init>(IIZLandroid/graphics/Rect;IIZ)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "FutureScreenShot"

    :try_start_27
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->bitmap:Landroid/graphics/Bitmap;
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2f} :catch_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception v0

    move-object p0, v0

    goto :goto_36

    :catch_33
    move-exception v0

    move-object p0, v0

    goto :goto_3e

    :goto_36
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :goto_3e
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .registers 5

    if-eqz p1, :cond_52

    const-string/jumbo v0, "SpenGestureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    invoke-static {v1, v2, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object p0

    if-nez p0, :cond_40

    sget-object p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyResult : Could not find request information. id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_43
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_4f

    throw p0

    :cond_52
    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBleSpenAddress(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "SpenGestureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBleSpenAddress : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter p0

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "setBleSpenAddress : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    goto :goto_34

    :cond_2d
    :try_start_2d
    const-string v0, "/efs/spen/blespen_addr"

    invoke-static {v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2b

    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2b

    throw p1
.end method

.method public final setBleSpenCmfCode(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "SpenGestureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBleSpenCmfCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter p0

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "setBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    goto :goto_34

    :cond_2d
    :try_start_2d
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-static {v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2b

    monitor-exit p0

    return-void

    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2b

    throw p1
.end method

.method public final setCurrentInputInfo(Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 5

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "no permission to use setCurrentInputInfo() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SpenGestureManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    new-instance p2, Lcom/android/server/smartclip/SpenGestureManagerService$8;

    invoke-direct {p2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$8;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setHoverStayDetectEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setHoverStayValues(III)V
    .registers 4

    if-lez p1, :cond_4

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    :cond_4
    if-lez p2, :cond_8

    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    :cond_8
    if-lez p3, :cond_c

    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    :cond_c
    return-void
.end method

.method public final setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_19

    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_19

    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_11

    :cond_7
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    :cond_11
    :goto_11
    return-void
.end method

.method public final setScreenOffDoubleTabTime()V
    .registers 3

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "setScreenOffDoubleTabTime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    return-void
.end method

.method public final setScreenOffReason(I)V
    .registers 4

    const-string/jumbo v0, "setScreenOffReason : "

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    return-void
.end method

.method public final setSpenInsertionState(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpenInsertionState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSpenPdctLowSensitivityEnable()V
    .registers 5

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "setSpenPdctLowSensitivityEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    const-string/jumbo v0, "mSemInputDeviceManager.setSpenPdctLowSensitivityEnable: Exception:"

    monitor-enter p0

    :try_start_12
    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPdctLowSensitivityEnable(I)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_1b
    .catchall {:try_start_12 .. :try_end_18} :catchall_19

    goto :goto_2d

    :catchall_19
    move-exception v0

    goto :goto_2f

    :catch_1b
    move-exception v1

    :try_start_1c
    const-string v2, "BleSpenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_19

    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_19

    throw v0
.end method

.method public final setSpenPowerSavingModeEnabled(Z)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPowerSavingMode(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string/jumbo p1, "mSemInputDeviceManager.setSpenPowerSavingMode: Exception: "

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showTouchPointer(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showTouchPointer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$7;

    invoke-direct {v0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService$7;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startAirCommandSpenTriggerService(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_3b

    :cond_a
    :try_start_a
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.service.aircommand.action.SPEN_TRIGGER_SERVICE"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.service.aircommand"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-string/jumbo p0, "start start spentrigger service."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start Spen trigger AirCommand. e = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method

.method public final startAirCommandUiService(Landroid/os/Bundle;)V
    .registers 8

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "bindService.isBound : "

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_83

    :cond_d
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    if-nez v2, :cond_26

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "action"

    const-string/jumbo v4, "start_remote_spen_service"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    :cond_26
    :try_start_26
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.service.aircommand.action.AIR_COMMAND_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.service.aircommand"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-string/jumbo p1, "startAirCommandUiService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz p1, :cond_83

    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    const/4 v4, 0x0

    if-nez p1, :cond_58

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-virtual {p1, v2, v5, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    goto :goto_58

    :catch_56
    move-exception p0

    goto :goto_72

    :cond_58
    :goto_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ".ret : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_71} :catch_56

    return-void

    :goto_72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start AirCommandUiService. "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-void
.end method

.method public final unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .registers 4

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    const-string/jumbo v1, "SpenGestureManagerService"

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "no permission to use unregisterAirGestureListener() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string/jumbo v0, "unregisterAirGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_2d

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_2d
    return-void
.end method

.method public final unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .registers 2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_a
    return-void
.end method

.method public final unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .registers 2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_a
    return-void
.end method

.method public final unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .registers 3

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "no permission to use unregisterInputMethodInfoChangeListener() : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SpenGestureManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_27
    return-void
.end method

.method public final writeBleSpenCommand(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "SpenGestureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeBleSpenCommand : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    const-string/jumbo v0, "mSemInputDeviceManager.setSpenBleChargeMode: Exception:"

    monitor-enter p0

    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-nez v1, :cond_30

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "writeBleSpenCommand : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    goto :goto_4e

    :cond_30
    :try_start_30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenBleChargeMode(I)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_3a
    .catchall {:try_start_30 .. :try_end_39} :catchall_2e

    goto :goto_4c

    :catch_3a
    move-exception p1

    :try_start_3b
    const-string v1, "BleSpenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_2e

    :goto_4c
    monitor-exit p0

    return-void

    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_2e

    throw p1
.end method

.method public final declared-synchronized writeDigitizerOnOffCommand(Z)V
    .registers 6

    const-string/jumbo v0, "mSemInputDeviceManager.setSpenPower: Exception: "

    const-string/jumbo v1, "writeDigitizerOnOffCommand = "

    monitor-enter p0

    :try_start_7
    const-string/jumbo v2, "SpenGestureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    :try_start_19
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPower(I)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_21
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_34

    :catchall_1f
    move-exception p1

    goto :goto_36

    :catch_21
    move-exception p1

    :try_start_22
    const-string/jumbo v1, "SpenGestureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_1f

    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1f

    throw p1
.end method
