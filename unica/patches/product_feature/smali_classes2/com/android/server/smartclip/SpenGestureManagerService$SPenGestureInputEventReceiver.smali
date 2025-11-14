.class public final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public sCfmsService:Landroid/os/ICustomFrequencyManager;

.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 16

    const-string/jumbo v0, "onPointerEvent : total time = "

    const-string/jumbo v1, "SpenGestureManagerService"

    const-string/jumbo v2, "onPointerEvent 4 : Action="

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    :try_start_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    and-int/lit8 v8, v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_22

    move v8, v10

    goto :goto_23

    :cond_22
    move v8, v9

    :goto_23
    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget v12, v11, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    const/4 v13, 0x3

    if-lt v12, v13, :cond_111

    invoke-static {v11, p1, v7, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v11, v11, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    if-eqz v11, :cond_42

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v11

    if-lez v11, :cond_42

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v11, p1, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;I)V

    goto :goto_42

    :catchall_3f
    move-exception p0

    goto/16 :goto_12a

    :cond_42
    :goto_42
    const/4 v11, 0x2

    if-eqz v8, :cond_71

    const/4 v12, 0x7

    if-eq v7, v12, :cond_71

    if-eq v7, v11, :cond_71

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sideButtonPressed="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", coverOpened="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    if-eqz v8, :cond_7b

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    if-ne v2, v10, :cond_7b

    move v2, v10

    goto :goto_7c

    :cond_7b
    move v2, v9

    :goto_7c
    const/16 v8, 0x9

    if-ne v7, v8, :cond_94

    invoke-virtual {p0, v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x301b

    iput v9, v8, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v9, v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d0

    :cond_94
    const/16 v8, 0xa

    const/16 v12, 0x3018

    if-ne v7, v8, :cond_ae

    invoke-virtual {p0, v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    iput v12, v8, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v9, v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    const-wide/16 v11, 0x32

    invoke-virtual {v9, v8, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d0

    :cond_ae
    if-nez v7, :cond_d0

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v8, "[HOVER] sending hover exit br is canceled by touch event."

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-ne v8, v11, :cond_d0

    invoke-virtual {p0, v7}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V
    :try_end_d0
    .catchall {:try_start_10 .. :try_end_d0} :catchall_3f

    :cond_d0
    :goto_d0
    if-ne v2, v10, :cond_111

    const/4 v2, 0x0

    const-string/jumbo v8, "sec_unused_e-pen"

    packed-switch v7, :pswitch_data_146

    :pswitch_d9  #0x4, 0x8
    :try_start_d9
    const-string/jumbo p0, "onPointerEvent : default"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    :pswitch_e0  #0x1, 0x3, 0x6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_ea

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_ea
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    goto :goto_111

    :cond_f1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_111

    :pswitch_f9  #0x0, 0x2, 0x5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_103

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_103
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    goto :goto_111

    :cond_10a
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_111
    .catchall {:try_start_d9 .. :try_end_111} :catchall_3f

    :cond_111
    :goto_111
    :pswitch_111  #0x7, 0x9, 0xa
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p0

    sub-long/2addr p0, v3

    cmp-long v2, p0, v5

    if-lez v2, :cond_129

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_129
    return-void

    :goto_12a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long p1, v7, v5

    if-lez p1, :cond_144

    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    throw p0

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_f9  #00000000
        :pswitch_e0  #00000001
        :pswitch_f9  #00000002
        :pswitch_e0  #00000003
        :pswitch_d9  #00000004
        :pswitch_f9  #00000005
        :pswitch_e0  #00000006
        :pswitch_111  #00000007
        :pswitch_d9  #00000008
        :pswitch_111  #00000009
        :pswitch_111  #0000000a
    .end packed-switch
.end method

.method public final sendEventToCfmsService(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_12
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_34

    if-eqz p0, :cond_38

    const/16 v0, 0x9

    const-string v1, "HOVERING_EVENT"

    if-ne p1, v0, :cond_22

    :try_start_1c
    const-string p1, "1"

    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2c

    const-string p1, "0"

    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    if-nez p1, :cond_38

    const-string p1, "3"

    invoke-interface {p0, v1, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    return-void
.end method
