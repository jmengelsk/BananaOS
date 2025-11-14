.class public final Lcom/android/server/policy/KeyCustomizationManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public defaultLongPressTimeout:J

.field public final mContext:Landroid/content/Context;

.field public mIsCalledOpenDictationXCoverTop:Z

.field public mIsKeyLongConsumed:Z

.field public mIsKeyLongPressed:Z

.field public mIsTopKeyOnLockScreen:Z

.field public mIsXCoverKeyOnLockScreen:Z

.field public final mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    new-instance p2, Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-direct {p2, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACTION_BLOCK_KEY_EVENT"

    return-object p0

    :cond_1
    const-string p0, "ACTION_START_SERVICE"

    return-object p0

    :cond_2
    const-string p0, "ACTION_SEND_BROADCAST"

    return-object p0

    :cond_3
    const-string p0, "ACTION_START_ACTIVITY"

    return-object p0
.end method

.method public static getEventId(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x437

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p0, 0x3

    if-eqz p1, :cond_1

    const-string p0, "HWB1107"

    return-object p0

    :cond_1
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_4

    const-string p0, "HWB1112"

    return-object p0

    :cond_2
    and-int/lit8 p1, p0, 0x3

    if-eqz p1, :cond_3

    const-string p0, "HWB1101"

    return-object p0

    :cond_3
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_4

    const-string p0, "HWB1106"

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_9

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_8

    const/16 v0, 0x32

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3b7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_5

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x450

    if-eq p0, v0, :cond_2

    const/16 v0, 0x452

    if-eq p0, v0, :cond_1

    const/16 v0, 0x453

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ID_GENERAL_APPLICATION"

    return-object p0

    :pswitch_1
    const-string p0, "ID_APPLICATION_UI_TV_MODE"

    return-object p0

    :pswitch_2
    const-string p0, "ID_APPLICATION_UI_CAMERA"

    return-object p0

    :cond_0
    const-string p0, "ID_SETTING_UI_MOUSE_BUTTON"

    return-object p0

    :cond_1
    const-string p0, "ID_SETTING_UI_ONE_HAND_MODE"

    return-object p0

    :cond_2
    const-string p0, "ID_SETTING_UI_SIDE_KEY"

    return-object p0

    :cond_3
    const-string p0, "ID_SETTING_UI_XCOVER_TOP"

    return-object p0

    :cond_4
    const-string p0, "ID_SETTING_UI"

    return-object p0

    :cond_5
    const-string p0, "ID_DEFAULT"

    return-object p0

    :cond_6
    const-string p0, "ID_SETTING_UI_B2B_DELTA"

    return-object p0

    :cond_7
    const-string p0, "ID_KNOX_LEGACY"

    return-object p0

    :cond_8
    const-string p0, "ID_KNOX_V2"

    return-object p0

    :cond_9
    const-string p0, "ID_KNOX_MDM"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isKnoxId(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isReportedKey(ZLandroid/os/Bundle;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo p0, "reportStateOnKeyedDown"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "reportStateOnKeyedUp"

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isXCoverOrTopKey(I)Z
    .locals 1

    const/16 v0, 0x3f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x437

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static pressToString(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const-string p0, "KEY_PRESS_SINGLE"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    const-string p0, "KEY_PRESS_LONG"

    return-object p0

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    const-string p0, "KEY_PRESS_DOUBLE"

    return-object p0

    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string p0, "KEY_PRESS_TRIPLE"

    return-object p0

    :cond_3
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_4

    const-string p0, "KEY_PRESS_QUADRUPLE"

    return-object p0

    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    const-string p0, "KEY_PRESS_QUINTUPLE"

    return-object p0

    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canDispatchXCoverTopKeyEvent(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "KeyCustomizationManager"

    if-ge v4, v2, :cond_3

    aget v6, v0, v4

    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_2

    const-string p0, "Allow XCover or Top key event dispatching even though screen is turned off by knox policy."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v2, v0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    aget v6, v0, v4

    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string p0, "After screen is turned off, disallow XCover or Top key event dispatching, because single or long press has a ID_SETTING_UI_XCOVER_TOP."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1
.end method

.method public final dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v9

    const/4 v10, 0x4

    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v11

    const/4 v12, -0x1

    if-eqz p2, :cond_2

    if-eq v11, v12, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    move/from16 v13, p2

    :goto_1
    sget-object v14, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v14, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v15, "KeyCustomizationManager"

    if-eqz v14, :cond_3

    const-string/jumbo v6, "dispatchKeyEvent: keyCode="

    const-string v8, " down="

    const-string v7, " repeatCount="

    invoke-static {v2, v6, v8, v7, v5}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isLongPress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " pressAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " longPressAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " forceDispatching="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v6, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_3
    if-eq v11, v12, :cond_5

    if-ne v11, v10, :cond_4

    goto :goto_2

    :cond_4
    move v6, v11

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v9

    :goto_3
    const/4 v7, 0x2

    if-eqz v6, :cond_6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_6

    if-eq v6, v7, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_6

    if-eqz v14, :cond_26

    const-string/jumbo v0, "dispatchKeyEvent - default, there is no action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    const/4 v6, 0x0

    if-eqz v5, :cond_17

    if-nez v3, :cond_a

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    iput-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v14, :cond_7

    const-string/jumbo v0, "dispatchKeyEvent:down - launch MCPTT, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v17, 0x1

    return v17

    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_8
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    :cond_9
    if-ne v9, v7, :cond_a

    const/4 v3, 0x0

    const/4 v8, 0x3

    invoke-virtual {v0, v6, v1, v8, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result v6

    if-ne v6, v12, :cond_a

    if-eqz v14, :cond_7

    const-string/jumbo v0, "dispatchKeyEvent:down - sendBroadcast, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    return v8

    :cond_a
    const/4 v8, 0x1

    if-eqz v4, :cond_12

    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_e

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v14, :cond_c

    const-string/jumbo v1, "dispatchKeyEvent:longPress - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v8

    :cond_d
    if-eqz v14, :cond_26

    const-string/jumbo v0, "dispatchKeyEvent:longPress - XCoverTopKey Action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_e
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v14, :cond_f

    const-string/jumbo v1, "dispatchKeyEvent:longPress - launch Action, NO_NEED_NEXT_STEP"

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v8

    :cond_10
    if-eqz v14, :cond_11

    const-string/jumbo v0, "dispatchKeyEvent:longPress, NEEDED_ONLY_LONG_PRESS_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x3

    return v16

    :cond_11
    const/16 v16, 0x3

    return v16

    :cond_12
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_16

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    const/4 v6, 0x0

    goto :goto_7

    :cond_14
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_13

    aget v6, v1, v4

    invoke-virtual {v0, v6, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_7

    :cond_15
    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :goto_7
    if-eqz v6, :cond_16

    if-eqz v14, :cond_26

    const-string/jumbo v0, "dispatchKeyEvent:down - XCoverTopKey Action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_16
    :goto_8
    const/4 v8, 0x1

    goto/16 :goto_c

    :cond_17
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    :cond_18
    if-ne v9, v7, :cond_19

    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    const/4 v8, 0x3

    invoke-virtual {v0, v6, v1, v8, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result v3

    if-ne v3, v12, :cond_19

    if-eqz v14, :cond_7

    const-string/jumbo v0, "dispatchKeyEvent:up - sendBroadcast, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_19
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v3, :cond_1c

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_9

    :cond_1a
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_20

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz v14, :cond_7

    const-string/jumbo v0, "dispatchKeyEvent:up - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1b
    if-eqz v14, :cond_26

    const-string/jumbo v0, "dispatchKeyEvent:up - XCoverTopKey Action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1c
    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-nez v4, :cond_20

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    move v6, v3

    goto :goto_b

    :cond_1e
    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v6, v4

    move v8, v3

    :goto_a
    if-ge v8, v6, :cond_1d

    aget v10, v4, v8

    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v6, 0x1

    goto :goto_b

    :cond_1f
    const/16 v17, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :goto_b
    if-eqz v6, :cond_20

    if-eqz v14, :cond_26

    const-string/jumbo v0, "dispatchKeyEvent:up - XCoverTopKey Action, No longPress consumed, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_20
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v3, :cond_21

    invoke-virtual {v0, v9, v1, v2, v13}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    goto/16 :goto_8

    :cond_21
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v14, :cond_7

    const-string/jumbo v0, "dispatchKeyEvent:up - launch MCPTT, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    return v8

    :cond_22
    const/4 v8, 0x1

    iget-boolean v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-eqz v0, :cond_24

    if-eqz v14, :cond_23

    const-string/jumbo v0, "dispatchKeyEvent:up - longPress, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_23
    move/from16 v17, v8

    goto :goto_f

    :cond_24
    :goto_c
    if-eq v9, v8, :cond_27

    const/4 v8, 0x3

    if-eq v9, v8, :cond_27

    if-eqz v13, :cond_25

    goto :goto_d

    :cond_25
    if-eqz v14, :cond_26

    const-string/jumbo v0, "dispatchKeyEvent - default, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return v7

    :cond_27
    :goto_d
    if-eqz v14, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dispatchKeyEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_28

    const-string/jumbo v1, "down"

    goto :goto_e

    :cond_28
    const-string/jumbo v1, "up"

    :goto_e
    const-string v2, " - forceDispatching or press action, NO_NEED_NEXT_STEP"

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :goto_f
    return v17
.end method

.method public final getLastAction(II)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    return p0
.end method

.method public final getLastId(II)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    return p0
.end method

.method public final hasHigherIdWithAllPress(II)Z
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v3, v1

    const/16 v4, 0x7d3

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_4

    aget v6, v1, v5

    if-ne v6, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v6, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget v6, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v4, v6, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ge v4, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v2
.end method

.method public final hasHigherIdWithOppositePress(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2

    const-string/jumbo v0, "hasHigherIdInOppositePress, press="

    const-string v1, " keyCode="

    const-string v2, " id="

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "KeyCustomizationManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hasLastInfo(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasXCoverTopId(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x44f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :cond_0
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v3, :cond_5

    aget v9, v2, v6

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :cond_1
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    invoke-virtual {p0, v9, p1, v10}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    goto :goto_2

    :cond_2
    iget-object v10, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v10, v9, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v9

    if-nez v9, :cond_3

    move-wide v9, v4

    goto :goto_1

    :cond_3
    iget-wide v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_1
    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    move-wide v7, v9

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    cmp-long p0, v7, v4

    if-eqz p0, :cond_a

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_3
    cmp-long p1, v7, v0

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    cmp-long p1, v7, v0

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    move-wide v4, v7

    :goto_4
    iput-wide v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    :cond_a
    :goto_5
    return-void
.end method

.method public final launchLongPressAction(ILandroid/view/KeyEvent;I)Z
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "launchLongPressAction, keyCode="

    const-string v3, " "

    invoke-static {p3, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCustomizationManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "launchLongPressAction was blocked by KeyCustomizationPolicy."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    return v4

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    return v2

    :cond_5
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_6
    :goto_1
    return v4

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return v4
.end method

.method public final launchLongPressAction(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public final launchMultiPressAction(Landroid/view/KeyEvent;I)V
    .locals 10

    const/4 v0, 0x5

    const-string v1, "KeyCustomizationManager"

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "launchMultiPressAction, event is null, Callers="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_3

    const/16 v0, 0x20

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    const/16 v0, 0x40

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    iget v8, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v8, v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    return-void

    :cond_8
    const-string/jumbo v3, "launchMultiPressAction, count="

    const-string v9, " keyCode="

    invoke-static {p2, v6, v3, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    if-eq v8, v5, :cond_a

    if-eq v8, v4, :cond_9

    const-string p0, " "

    invoke-static {p2, v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v8}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was wrong."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-virtual {p0, v7, v0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    return-void

    :cond_a
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    return-void

    :cond_b
    invoke-virtual {p0, v7}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return-void
.end method

.method public final launchPressAction(ILandroid/view/KeyEvent;IZ)Z
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_2

    if-eqz p4, :cond_1

    const/4 p2, -0x1

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    :goto_1
    const-string/jumbo p0, "launchPressAction, keyCode="

    const-string p2, " "

    invoke-static {p3, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " forceDispatching="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "launchPressSendBroadcast, keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isKeyLongPressed="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "KeyCustomizationManager"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    return-void
.end method

.method public final launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    const-string/jumbo v0, "torch/torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x437

    if-ne p3, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->onFlashlightKeyPressed(I)V

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_8

    invoke-static {p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Torch"

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    if-nez p4, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string/jumbo p4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.MAIN"

    const-string/jumbo p3, "android.intent.category.LAUNCHER"

    invoke-static {p2, p3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo p4, "keyguard"

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_4
    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p3

    const-string/jumbo v0, "isSecure"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p3, "isQuickLaunchMode"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_6

    const/high16 p1, 0x24000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const/high16 p1, 0x200000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "KeyCustomizationManager"

    const-string/jumbo p2, "No activity to launch Camera, "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    :goto_2
    return v1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return v1

    :cond_a
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public final launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p0, "Can not launch long press action by knox policy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez p2, :cond_4

    const-string p0, "Can not launch dedicated long action. Camera is running."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean p2, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    if-eqz p2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-virtual {v4, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x104108a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {v5, p0}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Voice to text message"

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    return v3

    :cond_8
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p0, "Can not launch press action by knox policy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p2, :cond_4

    const-string p0, "Can not launch dedicated action. Camera is running."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z
    .locals 5

    const-string/jumbo v0, "home/home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, p1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "Home"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "back/back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    const-string p1, "Back"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v1, v0

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public final prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V
    .locals 2

    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    const-string/jumbo p1, "close_dictation"

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v5, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-lt v3, v8, :cond_0

    if-ne v5, v7, :cond_0

    iget-object v9, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v9, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    return-void

    :cond_0
    iget v9, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v10, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget v12, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationConstants;->isAllowId(I)Z

    move-result v13

    if-eqz v13, :cond_27

    const/4 v13, 0x1

    if-eq v10, v2, :cond_3

    if-eq v10, v7, :cond_5

    const/16 v14, 0x4f

    if-eq v10, v14, :cond_7

    const/16 v14, 0xbb

    if-eq v10, v14, :cond_5

    const/16 v14, 0x3f7

    if-eq v10, v14, :cond_7

    const/16 v14, 0x437

    if-eq v10, v14, :cond_7

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_1

    and-int/lit8 v14, v9, 0x3

    if-eqz v14, :cond_1

    if-ne v11, v7, :cond_1

    const/16 v14, 0xa

    if-ne v12, v14, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-93)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    and-int/lit8 v14, v9, 0x3

    if-eqz v14, :cond_2

    and-int/lit8 v14, v9, 0x4

    if-nez v14, :cond_2

    and-int/lit8 v14, v9, 0x8

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-85)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-boolean v14, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz v14, :cond_5

    and-int/lit8 v14, v9, 0x4

    if-eqz v14, :cond_5

    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-92)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    :pswitch_1
    and-int/lit8 v14, v9, 0x3

    if-eqz v14, :cond_7

    if-eq v11, v13, :cond_6

    if-eq v11, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-87)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    const/4 v14, 0x2

    const/16 v15, 0x453

    if-nez v11, :cond_9

    const/16 v13, 0x44c

    if-lt v12, v13, :cond_8

    if-gt v12, v15, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(5)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eq v11, v13, :cond_b

    if-eq v11, v14, :cond_b

    if-eq v11, v2, :cond_b

    if-ne v11, v7, :cond_a

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-98)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    if-ne v11, v14, :cond_e

    iget-object v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationConstants;->isAllowIntentAction(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v11

    if-nez v11, :cond_e

    const/16 v11, 0x3b7

    if-ne v12, v11, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-94)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-99)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_3
    iget v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-eqz v11, :cond_10

    const/4 v13, -0x1

    if-ne v11, v13, :cond_f

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-97)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_4
    iget-object v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    const/16 v13, 0x7d3

    if-ne v12, v13, :cond_12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_5

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-88)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_5
    and-int/lit8 v11, v9, 0x3

    if-nez v11, :cond_14

    and-int/lit8 v13, v9, 0x4

    if-nez v13, :cond_14

    and-int/lit8 v13, v9, 0x8

    if-nez v13, :cond_14

    and-int/lit8 v13, v9, 0x10

    if-nez v13, :cond_14

    and-int/lit8 v13, v9, 0x20

    if-nez v13, :cond_14

    and-int/lit8 v13, v9, 0x40

    if-eqz v13, :cond_13

    goto :goto_6

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-86)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_6
    sget-boolean v13, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    const/16 v14, 0x1a

    if-eqz v13, :cond_16

    if-ne v10, v14, :cond_16

    and-int/lit8 v16, v9, 0x10

    if-nez v16, :cond_15

    goto :goto_7

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_7
    sget-boolean v16, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-nez v16, :cond_17

    if-eqz v13, :cond_19

    :cond_17
    if-ne v10, v14, :cond_19

    and-int/lit8 v10, v9, 0x40

    if-nez v10, :cond_18

    goto :goto_8

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-83)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_8
    and-int/lit8 v10, v9, 0x4

    if-nez v10, :cond_1a

    and-int/2addr v9, v8

    if-eqz v9, :cond_1b

    :cond_1a
    if-eq v12, v15, :cond_26

    :cond_1b
    iget-wide v12, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    const-wide/16 v15, 0x0

    cmp-long v9, v12, v15

    move/from16 v17, v9

    if-eqz v9, :cond_1d

    iget-wide v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    cmp-long v8, v12, v8

    if-ltz v8, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-91)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_9
    if-lez v17, :cond_1f

    if-eqz v10, :cond_1e

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-90)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_a
    iget-wide v8, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    cmp-long v8, v8, v15

    if-eqz v8, :cond_21

    if-nez v11, :cond_20

    if-nez v10, :cond_20

    goto :goto_b

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-89)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_b
    iget-object v8, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v9, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPid:I

    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPackageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    if-ne v4, v14, :cond_22

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_d

    :cond_22
    if-ne v5, v7, :cond_23

    const/16 v5, 0x8

    if-lt v3, v5, :cond_23

    invoke-virtual {v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    goto :goto_d

    :cond_23
    and-int/2addr v2, v3

    if-eqz v2, :cond_24

    goto :goto_c

    :cond_24
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_25

    iget-wide v7, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    cmp-long v2, v7, v15

    if-nez v2, :cond_25

    :goto_c
    return-void

    :cond_25
    invoke-virtual {v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    :goto_d
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    iget-wide v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    const/4 v5, 0x0

    move-wide/from16 v18, v1

    move v1, v3

    move v2, v4

    move-wide/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    return-void

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-84)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-96)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x445
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeKeyCustomizationInfo(IIILjava/lang/String;)V
    .locals 11

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v6, p1

    move v7, p2

    move v9, p3

    goto/16 :goto_8

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    move-wide v3, v1

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v10, 0x0

    move v6, p1

    move v7, p2

    move v9, p3

    move-object v8, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    move-result p1

    move v6, v7

    move v7, v9

    if-nez p1, :cond_3

    goto/16 :goto_7

    :cond_3
    const/16 p1, 0x1a

    if-ne v7, p1, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :goto_1
    and-int/lit8 p1, v6, 0x4

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_7

    move-wide p1, v1

    goto :goto_3

    :cond_7
    iget-wide p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_8

    goto :goto_3

    :cond_8
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_3
    cmp-long p3, v3, v1

    if-lez p3, :cond_d

    cmp-long p1, p1, v3

    if-nez p1, :cond_d

    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length p2, p1

    const/4 p3, 0x0

    move-wide v8, v1

    :goto_4
    if-ge p3, p2, :cond_c

    aget p4, p1, p3

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p4, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p4

    if-nez p4, :cond_a

    move-wide v3, v1

    goto :goto_5

    :cond_a
    iget-wide v3, p4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_5
    cmp-long p4, v8, v3

    if-gez p4, :cond_b

    move-wide v8, v3

    :cond_b
    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    :cond_d
    :goto_7
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :goto_8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "KeyCustomizationManager"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Requested info has been removed. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " keyCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_9
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const/16 v21, 0x0

    goto/16 :goto_1c

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {v0, v1, v9}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v10, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_3
    move-object/from16 v10, p1

    :cond_4
    iget v11, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v12, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_5

    move v13, v7

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    :goto_1
    iget-object v14, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    and-int/lit8 v15, v1, 0x4

    if-eqz v15, :cond_6

    move/from16 v16, v7

    :goto_2
    const/16 v17, 0x0

    goto :goto_3

    :cond_6
    and-int/lit8 v16, v1, 0x8

    if-eqz v16, :cond_7

    move/from16 v17, v7

    const/16 v16, 0x0

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    :goto_3
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    const/16 v18, -0x1

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KEY_CODE"

    const-string v2, "KeyCustomizationManager"

    if-nez v14, :cond_10

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v14

    if-nez v14, :cond_8

    const/4 v3, 0x0

    move-object v14, v3

    const/16 v21, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_9

    move/from16 v19, v7

    goto :goto_4

    :cond_9
    const/16 v19, 0x0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-eqz v19, :cond_a

    if-nez v20, :cond_a

    move/from16 v20, v7

    goto :goto_5

    :cond_a
    const/16 v20, 0x0

    :goto_5
    new-instance v4, Landroid/content/Intent;

    const/16 v21, 0x0

    const-string/jumbo v8, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x1000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v16, :cond_b

    const/4 v3, 0x4

    goto :goto_6

    :cond_b
    if-eqz v17, :cond_c

    const/16 v3, 0x8

    goto :goto_6

    :cond_c
    if-eqz v20, :cond_d

    move v3, v7

    goto :goto_6

    :cond_d
    if-nez v19, :cond_f

    if-eqz p4, :cond_e

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_e
    const/4 v3, 0x2

    goto :goto_6

    :cond_f
    move/from16 v3, v18

    :goto_6
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v14, v4

    :goto_7
    move/from16 v1, v21

    goto/16 :goto_17

    :cond_10
    const/16 v21, 0x0

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz v4, :cond_1a

    const/16 v4, 0x3b7

    if-ne v11, v4, :cond_1a

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_11

    const-string v0, "Can not sendBroadcast. The user setup is not complete"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_11
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v4, :cond_17

    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_8
    move/from16 v4, v18

    goto :goto_9

    :sswitch_0
    const-string/jumbo v5, "com.verizon.pushtotalkplus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_8

    :cond_13
    const/4 v4, 0x3

    goto :goto_9

    :sswitch_1
    const-string/jumbo v5, "com.att.eptt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_8

    :cond_14
    const/4 v4, 0x2

    goto :goto_9

    :sswitch_2
    const-string/jumbo v5, "com.sprint.sdcplus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_8

    :cond_15
    move v4, v7

    goto :goto_9

    :sswitch_3
    const-string/jumbo v5, "com.bell.ptt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_8

    :cond_16
    move/from16 v4, v21

    :goto_9
    packed-switch v4, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    invoke-static/range {p2 .. p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_16

    :cond_17
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_18

    move v4, v7

    goto :goto_b

    :cond_18
    move/from16 v4, v21

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v4, :cond_19

    move v4, v7

    goto :goto_c

    :cond_19
    const/4 v4, 0x2

    :goto_c
    invoke-virtual {v14, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_16

    :cond_1a
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_1b

    move/from16 v19, v7

    goto :goto_d

    :cond_1b
    move/from16 v19, v21

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-eqz v19, :cond_1c

    if-nez v20, :cond_1c

    move/from16 v20, v7

    goto :goto_e

    :cond_1c
    move/from16 v20, v21

    :goto_e
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1d

    const-string/jumbo v1, "getHardKeyReportState"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 p1, v1

    const-string/jumbo v1, "getHardKeyIntentState"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 v22, v1

    goto :goto_f

    :cond_1d
    move/from16 p1, v21

    move/from16 v22, p1

    :goto_f
    if-eqz p1, :cond_20

    move/from16 v1, v21

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v23

    const/4 v1, 0x1

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v24

    if-eqz v23, :cond_1e

    if-eqz v24, :cond_1e

    if-nez v20, :cond_21

    if-eqz v19, :cond_21

    goto :goto_10

    :cond_1e
    if-eqz v23, :cond_1f

    if-eqz v20, :cond_1f

    goto :goto_10

    :cond_1f
    if-eqz v24, :cond_21

    if-nez v19, :cond_21

    goto :goto_10

    :cond_20
    if-eqz v22, :cond_21

    const/16 v1, 0x1a

    if-eq v4, v1, :cond_21

    if-nez v19, :cond_21

    :goto_10
    const/4 v1, 0x1

    goto/16 :goto_15

    :cond_21
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_28

    const/4 v1, 0x0

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v3

    const/4 v1, 0x1

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v4

    if-eqz v3, :cond_24

    if-eqz v4, :cond_24

    if-eqz v20, :cond_22

    const/4 v4, 0x1

    goto :goto_11

    :cond_22
    if-nez v19, :cond_23

    const/4 v4, 0x2

    :goto_11
    invoke-virtual {v14, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_23
    :goto_12
    const/4 v1, 0x1

    goto :goto_14

    :cond_24
    if-eqz v3, :cond_26

    if-eqz v19, :cond_25

    goto :goto_12

    :cond_25
    const/4 v1, 0x2

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_12

    :cond_26
    if-eqz v4, :cond_23

    if-nez v20, :cond_27

    goto :goto_12

    :cond_27
    const/4 v1, 0x1

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14

    :cond_28
    const/4 v1, 0x1

    if-eqz v22, :cond_2c

    const/16 v3, 0x1a

    if-eq v4, v3, :cond_29

    goto :goto_14

    :cond_29
    if-eqz v16, :cond_2a

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14

    :cond_2a
    if-nez v19, :cond_2b

    const/4 v1, 0x2

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_14

    :cond_2b
    if-eqz v20, :cond_30

    invoke-virtual {v14, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_14

    :cond_2c
    const/4 v1, 0x2

    if-eqz v16, :cond_2d

    const/4 v4, 0x4

    goto :goto_13

    :cond_2d
    if-eqz v17, :cond_2e

    const/16 v4, 0x8

    goto :goto_13

    :cond_2e
    if-eqz v20, :cond_2f

    const/4 v4, 0x1

    goto :goto_13

    :cond_2f
    if-nez v19, :cond_30

    move v4, v1

    :goto_13
    invoke-virtual {v14, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_30
    :goto_14
    const/4 v1, 0x0

    :goto_15
    if-nez v13, :cond_31

    if-eqz p4, :cond_31

    const/4 v3, 0x1

    invoke-virtual {v14, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_17

    :cond_31
    invoke-virtual {v14, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_17

    :cond_32
    :goto_16
    const/4 v1, 0x0

    :goto_17
    if-nez v14, :cond_33

    const-string v0, "Can not sendBroadcast. intent is null. keyCode="

    const-string v1, " "

    invoke-static {v9, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    return v21

    :cond_33
    const/16 v21, 0x0

    invoke-static {v14}, Lcom/android/server/policy/KeyCustomizationConstants;->isAllowIntentAction(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v0, "Can not sendBroadcast. intent is not allowed."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_34
    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendBroadcastAsUser intent="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v1

    const/16 v3, 0x4f

    const/16 v4, 0x437

    const/16 v5, 0x3f7

    if-nez v1, :cond_36

    goto :goto_1b

    :cond_36
    if-eq v5, v9, :cond_37

    if-eq v4, v9, :cond_37

    if-eq v3, v9, :cond_37

    goto :goto_1b

    :cond_37
    if-nez v13, :cond_39

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v6, v1}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    goto :goto_18

    :cond_38
    const-string/jumbo v6, "blockedStateOnKeyedUp"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_18
    if-eqz v1, :cond_39

    goto :goto_1a

    :cond_39
    if-eqz v13, :cond_3b

    if-nez v0, :cond_3b

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3a

    const/4 v1, 0x0

    goto :goto_19

    :cond_3a
    const-string/jumbo v1, "blockedStateOnKeyedDown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_19
    if-eqz v1, :cond_3b

    :goto_1a
    return v18

    :cond_3b
    :goto_1b
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz v15, :cond_3d

    const/16 v0, 0xbb

    if-eq v9, v0, :cond_3c

    const/4 v0, 0x3

    if-ne v9, v0, :cond_3d

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Long press of key("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") action should be blocked by knox policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v18

    :cond_3d
    iget v0, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v9, v1, :cond_3e

    if-eq v9, v3, :cond_3e

    if-eq v9, v5, :cond_3e

    if-eq v9, v4, :cond_3e

    const/16 v1, 0x18

    if-eq v9, v1, :cond_3e

    const/16 v1, 0x19

    if-eq v9, v1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    return v0

    :goto_1c
    return v21

    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_3
        -0x3dc882fb -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 8

    iget-object v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v0, "KeyCustomizationManager"

    if-nez v2, :cond_0

    const-string p0, "Can not startActivity. intent is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const-string/jumbo v1, "startActivity. userId="

    const-string v3, " Callers="

    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayIdDesktopWindowingMode(I)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v0, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v3, 0xc000000

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v6, p0, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    return-void
.end method

.method public final startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z
    .locals 4

    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.att.firstnet.grey"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const-string v2, "KeyCustomizationManager"

    if-nez v0, :cond_0

    const-string p0, "Can not startService. intent is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    if-eqz v5, :cond_2

    const/16 v5, 0x3b7

    if-ne v1, v5, :cond_2

    const-string/jumbo v5, "com.att.firstnet.grey"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    const-string/jumbo p2, "android.intent.extra.KEY_EVENT"

    invoke-static {p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string/jumbo p4, "extraKeyCode"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    and-int/lit8 p3, p2, 0x3

    if-eqz p3, :cond_3

    const-string/jumbo v4, "press"

    goto :goto_1

    :cond_3
    and-int/lit8 p3, p2, 0x4

    if-eqz p3, :cond_4

    const-string/jumbo v4, "long"

    goto :goto_1

    :cond_4
    and-int/lit8 p3, p2, 0x8

    if-eqz p3, :cond_5

    const-string/jumbo v4, "double"

    goto :goto_1

    :cond_5
    and-int/lit8 p3, p2, 0x10

    if-eqz p3, :cond_6

    const-string/jumbo v4, "triple"

    goto :goto_1

    :cond_6
    and-int/lit8 p3, p2, 0x20

    if-eqz p3, :cond_7

    const-string/jumbo v4, "quadruple"

    goto :goto_1

    :cond_7
    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_8

    const-string/jumbo v4, "quintuple"

    :cond_8
    :goto_1
    const-string/jumbo p2, "extraKeyAction"

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    const-string/jumbo p2, "android.intent.action.MAIN"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "startService add action main"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget p2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const-string/jumbo p3, "startService. userId="

    const-string p4, " ownerPackage="

    invoke-static {p2, p3, p4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Callers="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7d3

    if-ne v1, p1, :cond_a

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_a
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(IIZ)V
    .locals 4

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    :goto_0
    if-eqz p3, :cond_2

    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    return-void
.end method

.method public final updateMultiPressTimeoutIfNeeded(IIJZ)V
    .locals 4

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_9

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_1

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    iget-wide v2, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    sget-wide v2, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_0
    if-nez p5, :cond_4

    cmp-long p1, v2, v0

    if-eqz p1, :cond_4

    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    iget-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p5, p1, v0

    if-eqz p5, :cond_6

    goto :goto_1

    :cond_6
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_1
    cmp-long p1, p3, p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_8

    move-wide p3, v0

    :cond_8
    iput-wide p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    :cond_9
    :goto_2
    return-void
.end method

.method public final updatePowerBehavior(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x4

    const/16 v1, 0x66

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x1a

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v0, p1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const-string/jumbo v5, "power_button_long_press"

    const-string/jumbo v6, "PhoneWindowManagerExt"

    if-nez v0, :cond_1

    invoke-virtual {p1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p1

    const/16 v0, 0x3b7

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "updated long press power behavior by b2b dedicated app"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const-string/jumbo p1, "Side key long press info was wrong."

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    iget-object p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-nez p1, :cond_2

    const-string/jumbo p1, "Side key long press intent info was wrong."

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v0, "updateLongPressPowerBehavior componentName:"

    invoke-static {v0, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "aiAgentApp/aiAgentApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "updated long press power behavior as digital assistant"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p1, 0x67

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_4
    const-string/jumbo v0, "wakeBixby/wakeBixby"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p1, "updated long press power behavior as wake bixby"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p1, 0x65

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_5
    const-string/jumbo v0, "globalAction/globalAction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "updated long press power behavior as global action"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_6
    const-string/jumbo p1, "updated long press power behavior as keyCustomizationInfo"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x10

    const/16 v5, 0x6a

    const/4 v6, 0x2

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz p1, :cond_9

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result p0

    if-eq p0, v3, :cond_a

    if-eq p0, v2, :cond_a

    if-ne p0, v6, :cond_d

    :cond_a
    iput v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    return-void

    :cond_b
    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1, v0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result p1

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_c

    if-ne p1, v6, :cond_d

    :cond_c
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    :cond_d
    return-void
.end method
