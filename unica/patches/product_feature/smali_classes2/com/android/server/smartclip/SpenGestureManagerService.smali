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
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_0
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverEnter()V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverExit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
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

    :goto_1
    return-void
.end method

.method public static -$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;I)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

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

    :goto_0
    if-ltz p1, :cond_4

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

    if-le v0, v4, :cond_4

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_4

    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    sub-int v4, v2, v3

    if-le v0, v4, :cond_4

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_4

    iget-wide v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget-wide v4, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    iget p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    int-to-long v6, p1

    sub-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_3

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

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_0
    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverStay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :cond_3
    move p1, v1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static -$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .locals 2

    const-string/jumbo v0, "onFloatingIconSettingChanged : "

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "cause"

    const-string/jumbo v1, "floating_on"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    return-void
.end method

.method public static -$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 12

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_10

    const/4 v9, 0x1

    if-eq p2, v9, :cond_11

    const/4 v6, 0x5

    if-eq p2, v6, :cond_10

    const/4 v6, 0x6

    if-eq p2, v6, :cond_11

    const/4 v4, 0x7

    const-wide/16 v10, 0x0

    if-eq p2, v4, :cond_8

    const/16 v3, 0x9

    if-eq p2, v3, :cond_4

    const/16 v3, 0xa

    if-eq p2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v3, :cond_14

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/input/InputManager;->semGetScanCodeState(III)I

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    const/16 v4, 0x3019

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    move-object v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :cond_3
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    return-void

    :cond_4
    move-object v6, v2

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-gtz v1, :cond_6

    iput-boolean v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :cond_5
    const-wide/16 v4, 0x64

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    :cond_6
    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    iget-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v3, v1, v10

    if-lez v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    move v7, v9

    :cond_7
    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    return-void

    :cond_8
    iget-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_9

    if-nez p3, :cond_9

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    :cond_9
    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    if-eqz v1, :cond_a

    goto/16 :goto_3

    :cond_a
    if-eqz p3, :cond_b

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-nez v1, :cond_b

    iput-boolean v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    return-void

    :cond_b
    if-nez p3, :cond_14

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    if-eqz v1, :cond_14

    iput-boolean v7, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    sub-long/2addr v1, v4

    cmp-long v4, v1, v10

    if-lez v4, :cond_14

    const-wide/16 v4, 0x320

    cmp-long v1, v1, v4

    if-lez v1, :cond_c

    goto/16 :goto_3

    :cond_c
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

    if-ge v1, v4, :cond_d

    const-string/jumbo v3, "left"

    goto :goto_0

    :cond_d
    const-string/jumbo v3, "right"

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    const-string/jumbo v5, "SpenGestureManagerService"

    if-nez v4, :cond_e

    const-string v0, "Can not start AirCommandUiService. #2"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    sub-long v8, v6, v8

    cmp-long v4, v8, v10

    if-lez v4, :cond_f

    const-wide/16 v10, 0x190

    cmp-long v4, v8, v10

    if-gez v4, :cond_f

    const-string v0, "Can not start AirCommandUiService. #3."

    invoke-static {v0, v8, v9, v5}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_f
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

    :cond_10
    move-object v6, v2

    goto :goto_1

    :cond_11
    if-eqz p3, :cond_14

    iget-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    return-void

    :goto_1
    if-eqz p3, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    goto :goto_2

    :cond_12
    iput-wide v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    :goto_2
    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :cond_13
    const-wide/16 v4, 0x64

    move-object v0, p0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    :cond_14
    :goto_3
    return-void
.end method

.method public static -$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
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

    :try_start_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to send the pen detection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

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
    .locals 16

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

    if-ne v8, v6, :cond_0

    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    :goto_0
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

    if-lez v6, :cond_1

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    invoke-direct {v6, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    move-object/from16 v8, p2

    invoke-virtual {v8, v6, v3}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_1
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

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
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

    if-eqz v1, :cond_3

    const-string/jumbo v1, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
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

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
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

    if-lez v1, :cond_6

    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/smartclip/SpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    return-void

    :cond_6
    const-string/jumbo v0, "Theme isn\'t supported. Not a spen model."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static checkChangeSpenThemePermission()V
    .locals 1

    const-string/jumbo v0, "com.samsung.android.permission.CHANGE_SPEN_THEME"

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static checkPermission(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
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
    .locals 1

    const-string/jumbo v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static getTopMostPackage()Landroid/content/ComponentName;
    .locals 2

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

    if-nez v1, :cond_0

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "getTopMostPackage : Failed to get running task info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static isUidSignature()Z
    .locals 3

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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
    .locals 3

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo p0, "SetupWizard on"

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "FactoryBinary"

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "ScreenOffMemo on"

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    return v1

    :cond_4
    const-string v0, "Failed to start AirCommand."

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final dispatchPenDetectionInfo(IJJLjava/lang/String;)V
    .locals 1

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
    .locals 1

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
    .locals 2

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "getBleSpenAddress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BleSpenManager"

    const-string/jumbo v1, "getBleSpenAddress : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_addr"

    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getBleSpenCmfCode()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "getBleSpenCmfCode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BleSpenManager"

    const-string/jumbo v1, "getBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object p0
.end method

.method public final getCurrentInputContext()Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-object p0
.end method

.method public final getCurrentMissingMethodFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    return p0
.end method

.method public final getScreenOffDoubleTabTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    return-wide v0
.end method

.method public final getScreenOffReason()I
    .locals 0

    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    return p0
.end method

.method public final getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "getScrollableRect : Result="

    const-string/jumbo v1, "SpenGestureManagerService"

    const-string/jumbo v2, "getScrollableRect()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v2, 0x0

    :try_start_0
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

    if-eqz p0, :cond_0

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

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "getScrollableRect : Result is null!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_0
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
    .locals 8

    const-string/jumbo v0, "getScrollableViewInfo : Result="

    const-string/jumbo v1, "SpenGestureManagerService"

    const-string/jumbo v2, "getScrollableViewInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v2, 0x0

    :try_start_0
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

    if-eqz p0, :cond_0

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

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "getScrollableViewInfo : Result is null!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_0
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
    .locals 7

    const-string/jumbo v0, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
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

    :cond_0
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

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    check-cast p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    if-nez p0, :cond_2

    const-string/jumbo p1, "SpenGestureManagerService"

    const-string/jumbo p2, "moveMetaFilesToLocalStorage : Empty repository!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :cond_2
    :goto_0
    const-string/jumbo p1, "SpenGestureManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object p0

    :cond_3
    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "getSmartClipDataByScreenRect : result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-object v1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
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
    .locals 7

    const-string/jumbo v0, "injectInputEvent : Result="

    const-string/jumbo v1, "android.permission.INJECT_EVENTS"

    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
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

    if-ne p4, v6, :cond_1

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-virtual {p0, v3}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p1, "SpenGestureManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "injectInputEvent : Result is null!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
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
    .locals 0

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSpenReversed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isSupportBleSpen()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result p0

    const-string/jumbo v0, "isSupportBleSpen : "

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v0, v1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final notifyAirGesture(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    const-string/jumbo v1, "SpenGestureManagerService"

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_1

    return-void

    :cond_1
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

    :catch_0
    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IAirGestureListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IAirGestureListener;->onGesture(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyBleSpenChargeLockState(Z)V
    .locals 2

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

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;->onChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    return-void
.end method

.method public final notifyKeyboardClosed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$9;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .locals 2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    const-string/jumbo v1, "SpenGestureManagerService"

    if-nez v0, :cond_0

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

    :cond_0
    const-string/jumbo v0, "registerAirGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final resetPenAttachSound(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resetPenDetachSound(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resetPenHoverIcon(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final saveBleSpenLogFile([B)V
    .locals 5

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "saveBleSpenLogFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    const-string/jumbo v0, "saveBleSpenLogFile fail : "

    const-string/jumbo v1, "saveBleSpenLogFile : "

    const-string/jumbo v2, "saveBleSpenLogFile : length="

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
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

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BleSpenManager"

    const-string/jumbo v4, "saveBleSpenLogFile : failed to make dirs"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v3}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    const-string p1, "BleSpenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    const-string v1, "BleSpenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :cond_1
    :try_start_7
    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "saveBleSpenLogFile : no buffer"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public final screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 8

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

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3

    if-eqz p1, :cond_1

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

    if-nez p0, :cond_0

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

    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string/jumbo p0, "SpenGestureManagerService"

    const-string/jumbo p1, "sendSmartClipRemoteRequestResult : result is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBleSpenAddress(Ljava/lang/String;)V
    .locals 3

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

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "setBleSpenAddress : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_addr"

    invoke-static {v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setBleSpenCmfCode(Ljava/lang/String;)V
    .locals 3

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

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "setBleSpenCmfCode : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_cmf"

    invoke-static {v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setCurrentInputInfo(Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
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
    .locals 0

    return-void
.end method

.method public final setHoverStayValues(III)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    :cond_1
    if-lez p3, :cond_2

    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    :cond_2
    return-void
.end method

.method public final setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setScreenOffDoubleTabTime()V
    .locals 2

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "setScreenOffDoubleTabTime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    return-void
.end method

.method public final setScreenOffReason(I)V
    .locals 2

    const-string/jumbo v0, "setScreenOffReason : "

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    return-void
.end method

.method public final setSpenInsertionState(Z)V
    .locals 2

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
    .locals 4

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "setSpenPdctLowSensitivityEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    const-string/jumbo v0, "mSemInputDeviceManager.setSpenPdctLowSensitivityEnable: Exception:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPdctLowSensitivityEnable(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BleSpenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final setSpenPowerSavingModeEnabled(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPowerSavingMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "mSemInputDeviceManager.setSpenPowerSavingMode: Exception: "

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showTouchPointer(Z)V
    .locals 2

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
    .locals 2

    const-string/jumbo v0, "SpenGestureManagerService"

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start Spen trigger AirCommand. e = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final startAirCommandUiService(Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "SpenGestureManagerService"

    const-string/jumbo v1, "bindService.isBound : "

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "action"

    const-string/jumbo v4, "start_remote_spen_service"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    :cond_1
    :try_start_0
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

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    const/4 v4, 0x0

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-virtual {p1, v2, v5, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
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
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start AirCommandUiService. "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .locals 2

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    const-string/jumbo v1, "SpenGestureManagerService"

    if-nez v0, :cond_0

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

    :cond_0
    const-string/jumbo v0, "unregisterAirGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    return-void
.end method

.method public final unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .locals 0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public final unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 0

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public final unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    move-result v0

    if-nez v0, :cond_0

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

    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    return-void
.end method

.method public final writeBleSpenCommand(Ljava/lang/String;)V
    .locals 3

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

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "BleSpenManager"

    const-string/jumbo v0, "writeBleSpenCommand : BLE Spen is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenBleChargeMode(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "BleSpenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized writeDigitizerOnOffCommand(Z)V
    .locals 4

    const-string/jumbo v0, "mSemInputDeviceManager.setSpenPower: Exception: "

    const-string/jumbo v1, "writeDigitizerOnOffCommand = "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "SpenGestureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPower(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string/jumbo v1, "SpenGestureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
