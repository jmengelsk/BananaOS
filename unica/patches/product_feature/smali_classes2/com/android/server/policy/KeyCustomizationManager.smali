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
    .registers 5

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
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "ACTION_BLOCK_KEY_EVENT"

    return-object p0

    :cond_14
    const-string p0, "ACTION_START_SERVICE"

    return-object p0

    :cond_17
    const-string p0, "ACTION_SEND_BROADCAST"

    return-object p0

    :cond_1a
    const-string p0, "ACTION_START_ACTIVITY"

    return-object p0
.end method

.method public static getEventId(II)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_17

    const/16 v0, 0x437

    if-eq p1, v0, :cond_9

    goto :goto_25

    :cond_9
    and-int/lit8 p1, p0, 0x3

    if-eqz p1, :cond_10

    const-string p0, "HWB1107"

    return-object p0

    :cond_10
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_25

    const-string p0, "HWB1112"

    return-object p0

    :cond_17
    and-int/lit8 p1, p0, 0x3

    if-eqz p1, :cond_1e

    const-string p0, "HWB1101"

    return-object p0

    :cond_1e
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_25

    const-string p0, "HWB1106"

    return-object p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public static idToString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_54

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_51

    const/16 v0, 0x32

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x3b7

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_48

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_45

    const/16 v0, 0x44f

    if-eq p0, v0, :cond_42

    const/16 v0, 0x450

    if-eq p0, v0, :cond_3f

    const/16 v0, 0x452

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x453

    if-eq p0, v0, :cond_39

    packed-switch p0, :pswitch_data_58

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x7d3
    const-string p0, "ID_GENERAL_APPLICATION"

    return-object p0

    :pswitch_33  #0x7d2
    const-string p0, "ID_APPLICATION_UI_TV_MODE"

    return-object p0

    :pswitch_36  #0x7d1
    const-string p0, "ID_APPLICATION_UI_CAMERA"

    return-object p0

    :cond_39
    const-string p0, "ID_SETTING_UI_MOUSE_BUTTON"

    return-object p0

    :cond_3c
    const-string p0, "ID_SETTING_UI_ONE_HAND_MODE"

    return-object p0

    :cond_3f
    const-string p0, "ID_SETTING_UI_SIDE_KEY"

    return-object p0

    :cond_42
    const-string p0, "ID_SETTING_UI_XCOVER_TOP"

    return-object p0

    :cond_45
    const-string p0, "ID_SETTING_UI"

    return-object p0

    :cond_48
    const-string p0, "ID_DEFAULT"

    return-object p0

    :cond_4b
    const-string p0, "ID_SETTING_UI_B2B_DELTA"

    return-object p0

    :cond_4e
    const-string p0, "ID_KNOX_LEGACY"

    return-object p0

    :cond_51
    const-string p0, "ID_KNOX_V2"

    return-object p0

    :cond_54
    const-string p0, "ID_KNOX_MDM"

    return-object p0

    nop

    :pswitch_data_58
    .packed-switch 0x7d1
        :pswitch_36  #000007d1
        :pswitch_33  #000007d2
        :pswitch_30  #000007d3
    .end packed-switch
.end method

.method public static isKnoxId(I)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_f

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_f

    const/16 v0, 0x32

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static isReportedKey(ZLandroid/os/Bundle;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p0, :cond_a

    const-string/jumbo p0, "reportStateOnKeyedDown"

    goto :goto_d

    :cond_a
    const-string/jumbo p0, "reportStateOnKeyedUp"

    :goto_d
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isXCoverOrTopKey(I)Z
    .registers 2

    const/16 v0, 0x3f7

    if-eq p0, v0, :cond_b

    const/16 v0, 0x437

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static pressToString(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_7

    const-string p0, "KEY_PRESS_SINGLE"

    return-object p0

    :cond_7
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_e

    const-string p0, "KEY_PRESS_LONG"

    return-object p0

    :cond_e
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_15

    const-string p0, "KEY_PRESS_DOUBLE"

    return-object p0

    :cond_15
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1c

    const-string p0, "KEY_PRESS_TRIPLE"

    return-object p0

    :cond_1c
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_23

    const-string p0, "KEY_PRESS_QUADRUPLE"

    return-object p0

    :cond_23
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_2a

    const-string p0, "KEY_PRESS_QUINTUPLE"

    return-object p0

    :cond_2a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canDispatchXCoverTopKeyEvent(I)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    goto :goto_45

    :cond_e
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    const-string v5, "KeyCustomizationManager"

    if-ge v4, v2, :cond_2e

    aget v6, v0, v4

    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_21

    goto :goto_2b

    :cond_21
    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_2b

    const-string p0, "Allow XCover or Top key event dispatching even though screen is turned off by knox policy."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_2e
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v2, v0

    move v4, v3

    :goto_32
    if-ge v4, v2, :cond_45

    aget v6, v0, v4

    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v6

    if-eqz v6, :cond_42

    const-string p0, "After screen is turned off, disallow XCover or Top key event dispatching, because single or long press has a ID_SETTING_UI_XCOVER_TOP."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_45
    :goto_45
    return v1
.end method

.method public final dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I
    .registers 21

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

    if-nez v5, :cond_18

    const/4 v5, 0x1

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v9

    const/4 v10, 0x4

    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v11

    const/4 v12, -0x1

    if-eqz p2, :cond_2c

    if-eq v11, v12, :cond_2a

    const/4 v13, 0x1

    goto :goto_2e

    :cond_2a
    const/4 v13, 0x0

    goto :goto_2e

    :cond_2c
    move/from16 v13, p2

    :goto_2e
    sget-object v14, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    sget-boolean v14, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v15, "KeyCustomizationManager"

    if-eqz v14, :cond_6c

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

    :cond_6c
    if-eq v11, v12, :cond_73

    if-ne v11, v10, :cond_71

    goto :goto_73

    :cond_71
    move v6, v11

    goto :goto_74

    :cond_73
    :goto_73
    move v6, v9

    :goto_74
    const/4 v7, 0x2

    if-eqz v6, :cond_88

    const/4 v8, 0x1

    if-eq v6, v8, :cond_88

    if-eq v6, v7, :cond_88

    const/4 v8, 0x3

    if-eq v6, v8, :cond_88

    if-eqz v14, :cond_200

    const-string/jumbo v0, "dispatchKeyEvent - default, there is no action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_88
    const/4 v6, 0x0

    if-eqz v5, :cond_148

    if-nez v3, :cond_c6

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    iput-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_ab

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_ab

    if-eqz v14, :cond_a7

    const-string/jumbo v0, "dispatchKeyEvent:down - launch MCPTT, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a4
    const/16 v17, 0x1

    return v17

    :cond_a7
    const/16 v17, 0x1

    goto/16 :goto_21b

    :cond_ab
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_b2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    :cond_b2
    if-ne v9, v7, :cond_c6

    const/4 v3, 0x0

    const/4 v8, 0x3

    invoke-virtual {v0, v6, v1, v8, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result v6

    if-ne v6, v12, :cond_c6

    if-eqz v14, :cond_a7

    const-string/jumbo v0, "dispatchKeyEvent:down - sendBroadcast, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    return v8

    :cond_c6
    const/4 v8, 0x1

    if-eqz v4, :cond_119

    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_f9

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v3

    if-nez v3, :cond_d7

    const/4 v3, 0x0

    goto :goto_db

    :cond_d7
    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v3

    :goto_db
    if-eqz v3, :cond_f9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_f0

    if-eqz v14, :cond_ec

    const-string/jumbo v1, "dispatchKeyEvent:longPress - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v8

    :cond_f0
    if-eqz v14, :cond_200

    const-string/jumbo v0, "dispatchKeyEvent:longPress - XCoverTopKey Action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_f9
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_10b

    if-eqz v14, :cond_107

    const-string/jumbo v1, "dispatchKeyEvent:longPress - launch Action, NO_NEED_NEXT_STEP"

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v8

    :cond_10b
    if-eqz v14, :cond_116

    const-string/jumbo v0, "dispatchKeyEvent:longPress, NEEDED_ONLY_LONG_PRESS_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x3

    return v16

    :cond_116
    const/16 v16, 0x3

    return v16

    :cond_119
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_145

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v1

    if-nez v1, :cond_125

    :cond_123
    const/4 v6, 0x0

    goto :goto_13a

    :cond_125
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_129
    if-ge v4, v3, :cond_123

    aget v6, v1, v4

    invoke-virtual {v0, v6, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v6

    if-eqz v6, :cond_135

    const/4 v6, 0x1

    goto :goto_13a

    :cond_135
    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_129

    :goto_13a
    if-eqz v6, :cond_145

    if-eqz v14, :cond_200

    const-string/jumbo v0, "dispatchKeyEvent:down - XCoverTopKey Action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_145
    :goto_145
    const/4 v8, 0x1

    goto/16 :goto_1f0

    :cond_148
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_14f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V

    :cond_14f
    if-ne v9, v7, :cond_164

    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    const/4 v8, 0x3

    invoke-virtual {v0, v6, v1, v8, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result v3

    if-ne v3, v12, :cond_164

    if-eqz v14, :cond_a7

    const-string/jumbo v0, "dispatchKeyEvent:up - sendBroadcast, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    :cond_164
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_1c2

    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v3, :cond_195

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v3

    if-nez v3, :cond_174

    const/4 v3, 0x0

    goto :goto_179

    :cond_174
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v3

    :goto_179
    if-eqz v3, :cond_1c2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_18c

    if-eqz v14, :cond_a7

    const-string/jumbo v0, "dispatchKeyEvent:up - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    :cond_18c
    if-eqz v14, :cond_200

    const-string/jumbo v0, "dispatchKeyEvent:up - XCoverTopKey Action, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_195
    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-nez v4, :cond_1c2

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v4

    if-nez v4, :cond_1a2

    :cond_1a0
    move v6, v3

    goto :goto_1b7

    :cond_1a2
    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v6, v4

    move v8, v3

    :goto_1a6
    if-ge v8, v6, :cond_1a0

    aget v10, v4, v8

    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v10

    if-eqz v10, :cond_1b2

    const/4 v6, 0x1

    goto :goto_1b7

    :cond_1b2
    const/16 v17, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a6

    :goto_1b7
    if-eqz v6, :cond_1c2

    if-eqz v14, :cond_200

    const-string/jumbo v0, "dispatchKeyEvent:up - XCoverTopKey Action, No longPress consumed, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1c2
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v3, :cond_1cb

    invoke-virtual {v0, v9, v1, v2, v13}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    goto/16 :goto_145

    :cond_1cb
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_1df

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1df

    if-eqz v14, :cond_a7

    const-string/jumbo v0, "dispatchKeyEvent:up - launch MCPTT, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    return v8

    :cond_1df
    const/4 v8, 0x1

    iget-boolean v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-eqz v0, :cond_1f0

    if-eqz v14, :cond_1ed

    const-string/jumbo v0, "dispatchKeyEvent:up - longPress, NO_NEED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1ed
    move/from16 v17, v8

    goto :goto_21b

    :cond_1f0
    :goto_1f0
    if-eq v9, v8, :cond_201

    const/4 v8, 0x3

    if-eq v9, v8, :cond_201

    if-eqz v13, :cond_1f8

    goto :goto_201

    :cond_1f8
    if-eqz v14, :cond_200

    const-string/jumbo v0, "dispatchKeyEvent - default, NEEDED_NEXT_STEP"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_200
    return v7

    :cond_201
    :goto_201
    if-eqz v14, :cond_a7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dispatchKeyEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_211

    const-string/jumbo v1, "down"

    goto :goto_214

    :cond_211
    const-string/jumbo v1, "up"

    :goto_214
    const-string v2, " - forceDispatching or press action, NO_NEED_NEXT_STEP"

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    :goto_21b
    return v17
.end method

.method public final getLastAction(II)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    return p0
.end method

.method public final getLastId(II)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, -0x1

    return p0

    :cond_a
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    return p0
.end method

.method public final hasHigherIdWithAllPress(II)Z
    .registers 11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    goto :goto_2f

    :cond_d
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v3, v1

    const/16 v4, 0x7d3

    move v5, v2

    :goto_13
    if-ge v5, v3, :cond_2b

    aget v6, v1, v5

    if-ne v6, p1, :cond_1a

    goto :goto_28

    :cond_1a
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v6, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-nez v6, :cond_23

    goto :goto_28

    :cond_23
    iget v6, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v4, v6, :cond_28

    move v4, v6

    :cond_28
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2b
    if-ge v4, v0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    :goto_2f
    return v2
.end method

.method public final hasHigherIdWithOppositePress(II)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_16

    goto :goto_2c

    :cond_16
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2c

    const-string/jumbo v0, "hasHigherIdInOppositePress, press="

    const-string v1, " keyCode="

    const-string v2, " id="

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "KeyCustomizationManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public final hasLastInfo(II)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final hasXCoverTopId(II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x44f

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :cond_9
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_10
    if-ge v6, v3, :cond_36

    aget v9, v2, v6

    if-ne p1, v1, :cond_19

    invoke-virtual {p0, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :cond_19
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_22

    const/4 v10, 0x1

    invoke-virtual {p0, v9, p1, v10}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    goto :goto_33

    :cond_22
    iget-object v10, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v10, v9, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v9

    if-nez v9, :cond_2c

    move-wide v9, v4

    goto :goto_2e

    :cond_2c
    iget-wide v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_2e
    cmp-long v11, v7, v9

    if-gez v11, :cond_33

    move-wide v7, v9

    :cond_33
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_36
    cmp-long p0, v7, v4

    if-eqz p0, :cond_61

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_49

    goto :goto_61

    :cond_49
    iget-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_50

    goto :goto_52

    :cond_50
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_52
    cmp-long p1, v7, v0

    if-nez p1, :cond_57

    goto :goto_61

    :cond_57
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    cmp-long p1, v7, v0

    if-nez p1, :cond_5e

    goto :goto_5f

    :cond_5e
    move-wide v4, v7

    :goto_5f
    iput-wide v4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    :cond_61
    :goto_61
    return-void
.end method

.method public final launchLongPressAction(ILandroid/view/KeyEvent;I)Z
    .registers 10

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    goto :goto_49

    :cond_9
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

    if-eq p1, v4, :cond_4a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_42

    const/4 v5, 0x3

    if-eq p1, v5, :cond_37

    if-eq p1, v0, :cond_30

    goto :goto_49

    :cond_30
    const-string/jumbo p0, "launchLongPressAction was blocked by KeyCustomizationPolicy."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_37
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_3e

    goto :goto_50

    :cond_3e
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    return v4

    :cond_42
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    if-nez p0, :cond_50

    :goto_49
    return v2

    :cond_4a
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_51

    :cond_50
    :goto_50
    return v4

    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return v4
.end method

.method public final launchLongPressAction(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public final launchMultiPressAction(Landroid/view/KeyEvent;I)V
    .registers 13

    const/4 v0, 0x5

    const-string v1, "KeyCustomizationManager"

    if-nez p1, :cond_1c

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

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p2, v5, :cond_25

    const/16 v0, 0x8

    goto :goto_35

    :cond_25
    if-ne p2, v4, :cond_2a

    const/16 v0, 0x10

    goto :goto_35

    :cond_2a
    if-ne p2, v3, :cond_2f

    const/16 v0, 0x20

    goto :goto_35

    :cond_2f
    if-ne p2, v0, :cond_34

    const/16 v0, 0x40

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    if-nez v0, :cond_38

    goto :goto_50

    :cond_38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v7

    if-nez v7, :cond_45

    goto :goto_50

    :cond_45
    iget v8, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v8, v3, :cond_4a

    goto :goto_50

    :cond_4a
    invoke-virtual {p0, v0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_50
    return-void

    :cond_51
    const-string/jumbo v3, "launchMultiPressAction, count="

    const-string v9, " keyCode="

    invoke-static {p2, v6, v3, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    if-eq v8, v9, :cond_83

    if-eq v8, v5, :cond_7e

    if-eq v8, v4, :cond_7a

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

    :cond_7a
    invoke-virtual {p0, v7, v0, v6, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    return-void

    :cond_7e
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    return-void

    :cond_83
    invoke-virtual {p0, v7}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return-void
.end method

.method public final launchPressAction(ILandroid/view/KeyEvent;IZ)Z
    .registers 8

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1a

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_27

    if-eq p1, v0, :cond_1c

    if-eqz p4, :cond_1a

    const/4 p2, -0x1

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    goto :goto_31

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    if-nez v1, :cond_23

    goto :goto_31

    :cond_23
    invoke-virtual {p0, v1, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    goto :goto_31

    :cond_27
    invoke-virtual {v1, v0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p2

    if-nez p2, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    :goto_31
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
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
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
    .registers 9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    const-string/jumbo v0, "torch/torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    const/16 v0, 0x437

    if-ne p3, v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    goto :goto_17

    :cond_15
    iget-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    :goto_17
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz v0, :cond_35

    :cond_23
    invoke-virtual {v2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->onFlashlightKeyPressed(I)V

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_ba

    invoke-static {p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Torch"

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_35
    if-nez p4, :cond_39

    goto/16 :goto_bf

    :cond_39
    const-string/jumbo p4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.MAIN"

    const-string/jumbo p3, "android.intent.category.LAUNCHER"

    invoke-static {p2, p3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo p4, "keyguard"

    if-nez p3, :cond_61

    iget-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_61
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

    if-nez p1, :cond_89

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_89
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_97

    const/high16 p1, 0x24000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_9c

    :cond_97
    const/high16 p1, 0x200000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_9c
    :try_start_9c
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9c .. :try_end_a1} :catch_a2

    return v1

    :catch_a2
    move-exception p0

    const-string p1, "KeyCustomizationManager"

    const-string/jumbo p2, "No activity to launch Camera, "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba

    :cond_ac
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_bf

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_bb

    :cond_ba
    :goto_ba
    return v1

    :cond_bb
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return v1

    :cond_bf
    :goto_bf
    const/4 p0, 0x0

    return p0
.end method

.method public final launchXCoverLongActionIfNeeded(Landroid/view/KeyEvent;Z)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_11

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    const-string p0, "Can not launch long press action by knox policy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    if-nez v0, :cond_3d

    return v1

    :cond_3d
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v6

    if-eqz v6, :cond_50

    if-nez p2, :cond_50

    const-string p0, "Can not launch dedicated long action. Camera is running."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_50
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-boolean p2, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    if-eqz p2, :cond_6b

    iput-boolean v3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-virtual {v4, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    goto :goto_7b

    :cond_6b
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x104108a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p0, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_7b
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_94

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {v5, p0}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "Voice to text message"

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_8e
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_95

    :cond_94
    return v3

    :cond_95
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverPressActionIfNeeded(Landroid/view/KeyEvent;Z)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_11

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    const-string p0, "Can not launch press action by knox policy"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    if-nez v0, :cond_3d

    return v1

    :cond_3d
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result v4

    if-eqz v4, :cond_54

    if-nez p2, :cond_54

    const-string p0, "Can not launch dedicated action. Camera is running."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_54
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5b

    return v3

    :cond_5b
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;ILandroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverTopDedicatedAction(Ljava/lang/String;ILandroid/view/KeyEvent;)Z
    .registers 9

    const-string/jumbo v0, "home/home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-eqz v0, :cond_27

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

    goto :goto_3b

    :cond_27
    const-string/jumbo v0, "back/back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    const/4 p1, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    const-string p1, "Back"

    goto :goto_3b

    :cond_39
    const/4 p1, 0x0

    move v1, v0

    :goto_3b
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_4d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return v1
.end method

.method public final prepareVoiceToTextMessage(Landroid/view/KeyEvent;I)V
    .registers 5

    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_42

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_42

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_42

    :cond_2a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_34

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    return-void

    :cond_34
    iget-boolean p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    if-eqz p1, :cond_42

    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    const-string/jumbo p1, "close_dictation"

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public final putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v5, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-lt v3, v8, :cond_21

    if-ne v5, v7, :cond_21

    iget-object v9, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v9, v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v9

    if-nez v9, :cond_21

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    return-void

    :cond_21
    iget v9, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v10, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget v12, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationConstants;->isAllowId(I)Z

    move-result v13

    if-eqz v13, :cond_1ec

    const/4 v13, 0x1

    if-eq v10, v2, :cond_7c

    if-eq v10, v7, :cond_93

    const/16 v14, 0x4f

    if-eq v10, v14, :cond_a4

    const/16 v14, 0xbb

    if-eq v10, v14, :cond_93

    const/16 v14, 0x3f7

    if-eq v10, v14, :cond_a4

    const/16 v14, 0x437

    if-eq v10, v14, :cond_a4

    packed-switch v10, :pswitch_data_1f4

    packed-switch v10, :pswitch_data_1fe

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_5f

    and-int/lit8 v14, v9, 0x3

    if-eqz v14, :cond_5f

    if-ne v11, v7, :cond_5f

    const/16 v14, 0xa

    if-ne v12, v14, :cond_5f

    goto :goto_a4

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-93)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_67  #0x445, 0x446, 0x447, 0x448
    and-int/lit8 v14, v9, 0x3

    if-eqz v14, :cond_74

    and-int/lit8 v14, v9, 0x4

    if-nez v14, :cond_74

    and-int/lit8 v14, v9, 0x8

    if-nez v14, :cond_74

    goto :goto_a4

    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-85)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    sget-boolean v14, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    if-eqz v14, :cond_93

    and-int/lit8 v14, v9, 0x4

    if-eqz v14, :cond_93

    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_8b

    goto :goto_93

    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-92)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    :goto_93
    :pswitch_93  #0x18, 0x19, 0x1a
    and-int/lit8 v14, v9, 0x3

    if-eqz v14, :cond_a4

    if-eq v11, v13, :cond_9c

    if-eq v11, v2, :cond_9c

    goto :goto_a4

    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-87)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    :goto_a4
    const/4 v14, 0x2

    const/16 v15, 0x453

    if-nez v11, :cond_b8

    const/16 v13, 0x44c

    if-lt v12, v13, :cond_b0

    if-gt v12, v15, :cond_b0

    goto :goto_c9

    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(5)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    if-eq v11, v13, :cond_c9

    if-eq v11, v14, :cond_c9

    if-eq v11, v2, :cond_c9

    if-ne v11, v7, :cond_c1

    goto :goto_c9

    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-98)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c9
    :goto_c9
    if-ne v11, v14, :cond_ee

    iget-object v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationConstants;->isAllowIntentAction(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_e6

    invoke-static {v12}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v11

    if-nez v11, :cond_ee

    const/16 v11, 0x3b7

    if-ne v12, v11, :cond_de

    goto :goto_ee

    :cond_de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-94)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-99)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ee
    :goto_ee
    iget v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-eqz v11, :cond_fe

    const/4 v13, -0x1

    if-ne v11, v13, :cond_f6

    goto :goto_fe

    :cond_f6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-97)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fe
    :goto_fe
    iget-object v11, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    const/16 v13, 0x7d3

    if-ne v12, v13, :cond_113

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10b

    goto :goto_113

    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-88)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_113
    :goto_113
    and-int/lit8 v11, v9, 0x3

    if-nez v11, :cond_134

    and-int/lit8 v13, v9, 0x4

    if-nez v13, :cond_134

    and-int/lit8 v13, v9, 0x8

    if-nez v13, :cond_134

    and-int/lit8 v13, v9, 0x10

    if-nez v13, :cond_134

    and-int/lit8 v13, v9, 0x20

    if-nez v13, :cond_134

    and-int/lit8 v13, v9, 0x40

    if-eqz v13, :cond_12c

    goto :goto_134

    :cond_12c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-86)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_134
    :goto_134
    sget-boolean v13, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    const/16 v14, 0x1a

    if-eqz v13, :cond_149

    if-ne v10, v14, :cond_149

    and-int/lit8 v16, v9, 0x10

    if-nez v16, :cond_141

    goto :goto_149

    :cond_141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_149
    :goto_149
    sget-boolean v16, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-nez v16, :cond_14f

    if-eqz v13, :cond_15e

    :cond_14f
    if-ne v10, v14, :cond_15e

    and-int/lit8 v10, v9, 0x40

    if-nez v10, :cond_156

    goto :goto_15e

    :cond_156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-83)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15e
    :goto_15e
    and-int/lit8 v10, v9, 0x4

    if-nez v10, :cond_165

    and-int/2addr v9, v8

    if-eqz v9, :cond_167

    :cond_165
    if-eq v12, v15, :cond_1e4

    :cond_167
    iget-wide v12, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    const-wide/16 v15, 0x0

    cmp-long v9, v12, v15

    move/from16 v17, v9

    if-eqz v9, :cond_180

    iget-wide v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    cmp-long v8, v12, v8

    if-ltz v8, :cond_178

    goto :goto_180

    :cond_178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-91)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_180
    :goto_180
    if-lez v17, :cond_18d

    if-eqz v10, :cond_185

    goto :goto_18d

    :cond_185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-90)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18d
    :goto_18d
    iget-wide v8, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    cmp-long v8, v8, v15

    if-eqz v8, :cond_1a0

    if-nez v11, :cond_198

    if-nez v10, :cond_198

    goto :goto_1a0

    :cond_198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-89)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a0
    :goto_1a0
    iget-object v8, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v9, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPid:I

    invoke-virtual {v8, v9}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPackageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    if-ne v4, v14, :cond_1b8

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_1d4

    :cond_1b8
    if-ne v5, v7, :cond_1c2

    const/16 v5, 0x8

    if-lt v3, v5, :cond_1c2

    invoke-virtual {v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    goto :goto_1d4

    :cond_1c2
    and-int/2addr v2, v3

    if-eqz v2, :cond_1c6

    goto :goto_1d0

    :cond_1c6
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_1d1

    iget-wide v7, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    cmp-long v2, v7, v15

    if-nez v2, :cond_1d1

    :goto_1d0
    return-void

    :cond_1d1
    invoke-virtual {v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    :goto_1d4
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    iget-wide v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    const/4 v5, 0x0

    move-wide/from16 v18, v1

    move v1, v3

    move v2, v4

    move-wide/from16 v3, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    return-void

    :cond_1e4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-84)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error code(-96)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1f4
    .packed-switch 0x18
        :pswitch_93  #00000018
        :pswitch_93  #00000019
        :pswitch_93  #0000001a
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x445
        :pswitch_67  #00000445
        :pswitch_67  #00000446
        :pswitch_67  #00000447
        :pswitch_67  #00000448
    .end packed-switch
.end method

.method public final removeKeyCustomizationInfo(IIILjava/lang/String;)V
    .registers 16

    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-virtual {v0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    :cond_1d
    move v6, p1

    move v7, p2

    move v9, p3

    goto/16 :goto_b6

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_b3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_30

    move-wide v3, v1

    goto :goto_32

    :cond_30
    iget-wide v3, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_32
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

    if-nez p1, :cond_43

    goto/16 :goto_b2

    :cond_43
    const/16 p1, 0x1a

    if-ne v7, p1, :cond_4b

    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_50

    :cond_4b
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :goto_50
    and-int/lit8 p1, v6, 0x4

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_65

    goto :goto_68

    :cond_65
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_7a

    move-wide p1, v1

    goto :goto_83

    :cond_7a
    iget-wide p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_81

    goto :goto_83

    :cond_81
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_83
    cmp-long p3, v3, v1

    if-lez p3, :cond_b2

    cmp-long p1, p1, v3

    if-nez p1, :cond_b2

    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length p2, p1

    const/4 p3, 0x0

    move-wide v8, v1

    :goto_90
    if-ge p3, p2, :cond_ad

    aget p4, p1, p3

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_99

    goto :goto_aa

    :cond_99
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p4, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p4

    if-nez p4, :cond_a3

    move-wide v3, v1

    goto :goto_a5

    :cond_a3
    iget-wide v3, p4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_a5
    cmp-long p4, v8, v3

    if-gez p4, :cond_aa

    move-wide v8, v3

    :cond_aa
    :goto_aa
    add-int/lit8 p3, p3, 0x1

    goto :goto_90

    :cond_ad
    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    :cond_b2
    :goto_b2
    return-void

    :catchall_b3
    move-exception v0

    move-object p0, v0

    goto :goto_e4

    :goto_b6
    :try_start_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b3

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

    :goto_e4
    :try_start_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_b3

    throw p0
.end method

.method public final sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-nez v1, :cond_e

    :cond_a
    :goto_a
    const/16 v21, 0x0

    goto/16 :goto_309

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {v0, v1, v9}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_a

    :cond_19
    if-nez p1, :cond_24

    iget-object v10, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v10

    if-nez v10, :cond_26

    goto :goto_a

    :cond_24
    move-object/from16 v10, p1

    :cond_26
    iget v11, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v12, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_32

    move v13, v7

    goto :goto_33

    :cond_32
    const/4 v13, 0x0

    :goto_33
    iget-object v14, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    and-int/lit8 v15, v1, 0x4

    if-eqz v15, :cond_3e

    move/from16 v16, v7

    :goto_3b
    const/16 v17, 0x0

    goto :goto_4a

    :cond_3e
    and-int/lit8 v16, v1, 0x8

    if-eqz v16, :cond_47

    move/from16 v17, v7

    const/16 v16, 0x0

    goto :goto_4a

    :cond_47
    const/16 v16, 0x0

    goto :goto_3b

    :goto_4a
    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    const/16 v18, -0x1

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KEY_CODE"

    const-string v2, "KeyCustomizationManager"

    if-nez v14, :cond_b2

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v14

    if-nez v14, :cond_64

    const/4 v3, 0x0

    move-object v14, v3

    const/16 v21, 0x0

    goto :goto_ae

    :cond_64
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_71

    move/from16 v19, v7

    goto :goto_73

    :cond_71
    const/16 v19, 0x0

    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-eqz v19, :cond_7e

    if-nez v20, :cond_7e

    move/from16 v20, v7

    goto :goto_80

    :cond_7e
    const/16 v20, 0x0

    :goto_80
    new-instance v4, Landroid/content/Intent;

    const/16 v21, 0x0

    const-string/jumbo v8, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x1000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v16, :cond_96

    const/4 v3, 0x4

    goto :goto_aa

    :cond_96
    if-eqz v17, :cond_9b

    const/16 v3, 0x8

    goto :goto_aa

    :cond_9b
    if-eqz v20, :cond_9f

    move v3, v7

    goto :goto_aa

    :cond_9f
    if-nez v19, :cond_a8

    if-eqz p4, :cond_a6

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a6
    const/4 v3, 0x2

    goto :goto_aa

    :cond_a8
    move/from16 v3, v18

    :goto_aa
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v14, v4

    :goto_ae
    move/from16 v1, v21

    goto/16 :goto_221

    :cond_b2
    const/16 v21, 0x0

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz v4, :cond_146

    const/16 v4, 0x3b7

    if-ne v11, v4, :cond_146

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_cf

    const-string v0, "Can not sendBroadcast. The user setup is not complete"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_cf
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v4, :cond_12b

    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_de

    goto :goto_12b

    :cond_de
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_30a

    :goto_e8
    move/from16 v4, v18

    goto :goto_11b

    :sswitch_eb
    const-string/jumbo v5, "com.verizon.pushtotalkplus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f5

    goto :goto_e8

    :cond_f5
    const/4 v4, 0x3

    goto :goto_11b

    :sswitch_f7
    const-string/jumbo v5, "com.att.eptt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_101

    goto :goto_e8

    :cond_101
    const/4 v4, 0x2

    goto :goto_11b

    :sswitch_103
    const-string/jumbo v5, "com.sprint.sdcplus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10d

    goto :goto_e8

    :cond_10d
    move v4, v7

    goto :goto_11b

    :sswitch_10f
    const-string/jumbo v5, "com.bell.ptt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_119

    goto :goto_e8

    :cond_119
    move/from16 v4, v21

    :goto_11b
    packed-switch v4, :pswitch_data_31c

    goto :goto_12b

    :pswitch_11f  #0x0, 0x1, 0x2, 0x3
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    invoke-static/range {p2 .. p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_220

    :cond_12b
    :goto_12b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_133

    move v4, v7

    goto :goto_135

    :cond_133
    move/from16 v4, v21

    :goto_135
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v4, :cond_140

    move v4, v7

    goto :goto_141

    :cond_140
    const/4 v4, 0x2

    :goto_141
    invoke-virtual {v14, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_220

    :cond_146
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_220

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_159

    move/from16 v19, v7

    goto :goto_15b

    :cond_159
    move/from16 v19, v21

    :goto_15b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v20

    if-eqz v19, :cond_166

    if-nez v20, :cond_166

    move/from16 v20, v7

    goto :goto_168

    :cond_166
    move/from16 v20, v21

    :goto_168
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_181

    const-string/jumbo v1, "getHardKeyReportState"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 p1, v1

    const-string/jumbo v1, "getHardKeyIntentState"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 v22, v1

    goto :goto_185

    :cond_181
    move/from16 p1, v21

    move/from16 v22, p1

    :goto_185
    if-eqz p1, :cond_1a5

    move/from16 v1, v21

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v23

    const/4 v1, 0x1

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v24

    if-eqz v23, :cond_19b

    if-eqz v24, :cond_19b

    if-nez v20, :cond_1b0

    if-eqz v19, :cond_1b0

    goto :goto_1ad

    :cond_19b
    if-eqz v23, :cond_1a0

    if-eqz v20, :cond_1a0

    goto :goto_1ad

    :cond_1a0
    if-eqz v24, :cond_1b0

    if-nez v19, :cond_1b0

    goto :goto_1ad

    :cond_1a5
    if-eqz v22, :cond_1b0

    const/16 v1, 0x1a

    if-eq v4, v1, :cond_1b0

    if-nez v19, :cond_1b0

    :goto_1ad
    const/4 v1, 0x1

    goto/16 :goto_213

    :cond_1b0
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_1e3

    const/4 v1, 0x0

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v3

    const/4 v1, 0x1

    invoke-static {v1, v7}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v4

    if-eqz v3, :cond_1cf

    if-eqz v4, :cond_1cf

    if-eqz v20, :cond_1c7

    const/4 v4, 0x1

    goto :goto_1ca

    :cond_1c7
    if-nez v19, :cond_1cd

    const/4 v4, 0x2

    :goto_1ca
    invoke-virtual {v14, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1cd
    :goto_1cd
    const/4 v1, 0x1

    goto :goto_212

    :cond_1cf
    if-eqz v3, :cond_1d9

    if-eqz v19, :cond_1d4

    goto :goto_1cd

    :cond_1d4
    const/4 v1, 0x2

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1cd

    :cond_1d9
    if-eqz v4, :cond_1cd

    if-nez v20, :cond_1de

    goto :goto_1cd

    :cond_1de
    const/4 v1, 0x1

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_212

    :cond_1e3
    const/4 v1, 0x1

    if-eqz v22, :cond_1fe

    const/16 v3, 0x1a

    if-eq v4, v3, :cond_1eb

    goto :goto_212

    :cond_1eb
    if-eqz v16, :cond_1f1

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_212

    :cond_1f1
    if-nez v19, :cond_1f8

    const/4 v1, 0x2

    invoke-virtual {v14, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_212

    :cond_1f8
    if-eqz v20, :cond_212

    invoke-virtual {v14, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_212

    :cond_1fe
    const/4 v1, 0x2

    if-eqz v16, :cond_203

    const/4 v4, 0x4

    goto :goto_20f

    :cond_203
    if-eqz v17, :cond_208

    const/16 v4, 0x8

    goto :goto_20f

    :cond_208
    if-eqz v20, :cond_20c

    const/4 v4, 0x1

    goto :goto_20f

    :cond_20c
    if-nez v19, :cond_212

    move v4, v1

    :goto_20f
    invoke-virtual {v14, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_212
    :goto_212
    const/4 v1, 0x0

    :goto_213
    if-nez v13, :cond_21c

    if-eqz p4, :cond_21c

    const/4 v3, 0x1

    invoke-virtual {v14, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_221

    :cond_21c
    invoke-virtual {v14, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_221

    :cond_220
    :goto_220
    const/4 v1, 0x0

    :goto_221
    if-nez v14, :cond_23c

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

    :cond_23c
    const/16 v21, 0x0

    invoke-static {v14}, Lcom/android/server/policy/KeyCustomizationConstants;->isAllowIntentAction(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_24a

    const-string v0, "Can not sendBroadcast. intent is not allowed."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    :cond_24a
    if-nez v1, :cond_270

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

    :cond_270
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v1

    const/16 v3, 0x4f

    const/16 v4, 0x437

    const/16 v5, 0x3f7

    if-nez v1, :cond_281

    goto :goto_2c8

    :cond_281
    if-eq v5, v9, :cond_288

    if-eq v4, v9, :cond_288

    if-eq v3, v9, :cond_288

    goto :goto_2c8

    :cond_288
    if-nez v13, :cond_2a7

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v6, v1}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2a7

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_29d

    const/4 v1, 0x0

    goto :goto_2a4

    :cond_29d
    const-string/jumbo v6, "blockedStateOnKeyedUp"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_2a4
    if-eqz v1, :cond_2a7

    goto :goto_2c7

    :cond_2a7
    if-eqz v13, :cond_2c8

    if-nez v0, :cond_2c8

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2be

    const/4 v1, 0x0

    goto :goto_2c5

    :cond_2be
    const-string/jumbo v1, "blockedStateOnKeyedDown"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_2c5
    if-eqz v1, :cond_2c8

    :goto_2c7
    return v18

    :cond_2c8
    :goto_2c8
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2ef

    if-eqz v15, :cond_2ef

    const/16 v0, 0xbb

    if-eq v9, v0, :cond_2d7

    const/4 v0, 0x3

    if-ne v9, v0, :cond_2ef

    :cond_2d7
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

    :cond_2ef
    iget v0, v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v9, v1, :cond_308

    if-eq v9, v3, :cond_308

    if-eq v9, v5, :cond_308

    if-eq v9, v4, :cond_308

    const/16 v1, 0x18

    if-eq v9, v1, :cond_308

    const/16 v1, 0x19

    if-eq v9, v1, :cond_308

    goto/16 :goto_a

    :cond_308
    return v0

    :goto_309
    return v21

    :sswitch_data_30a
    .sparse-switch
        -0x6e35f6ae -> :sswitch_10f
        -0x3dc882fb -> :sswitch_103
        0x4dbc6965 -> :sswitch_f7
        0x7903cfc3 -> :sswitch_eb
    .end sparse-switch

    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_11f  #00000000
        :pswitch_11f  #00000001
        :pswitch_11f  #00000002
        :pswitch_11f  #00000003
    .end packed-switch
.end method

.method public final startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 10

    iget-object v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v0, "KeyCustomizationManager"

    if-nez v2, :cond_15

    const-string p0, "Can not startActivity. intent is null."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
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

    if-nez v0, :cond_64

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDesktopWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_59

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

    :cond_59
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_64
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
    .registers 7

    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_32

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_32

    :cond_11
    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_32

    :cond_1c
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.att.firstnet.grey"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public final startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V
    .registers 11

    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const-string v2, "KeyCustomizationManager"

    if-nez v0, :cond_e

    const-string p0, "Can not startService. intent is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v4

    :goto_1f
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_B2B_DEDICATED_APP:Z

    if-eqz v5, :cond_3d

    const/16 v5, 0x3b7

    if-ne v1, v5, :cond_3d

    const-string/jumbo v5, "com.att.firstnet.grey"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    if-eqz p4, :cond_3d

    const-string/jumbo p2, "android.intent.extra.KEY_EVENT"

    invoke-static {p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_78

    :cond_3d
    const-string/jumbo p4, "extraKeyCode"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    and-int/lit8 p3, p2, 0x3

    if-eqz p3, :cond_4b

    const-string/jumbo v4, "press"

    goto :goto_72

    :cond_4b
    and-int/lit8 p3, p2, 0x4

    if-eqz p3, :cond_53

    const-string/jumbo v4, "long"

    goto :goto_72

    :cond_53
    and-int/lit8 p3, p2, 0x8

    if-eqz p3, :cond_5b

    const-string/jumbo v4, "double"

    goto :goto_72

    :cond_5b
    and-int/lit8 p3, p2, 0x10

    if-eqz p3, :cond_63

    const-string/jumbo v4, "triple"

    goto :goto_72

    :cond_63
    and-int/lit8 p3, p2, 0x20

    if-eqz p3, :cond_6b

    const-string/jumbo v4, "quadruple"

    goto :goto_72

    :cond_6b
    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_72

    const-string/jumbo v4, "quintuple"

    :cond_72
    :goto_72
    const-string/jumbo p2, "extraKeyAction"

    invoke-virtual {v0, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_78
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8a

    const-string/jumbo p2, "android.intent.action.MAIN"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "startService add action main"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
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

    if-ne v1, p1, :cond_bd

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_bd
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(IIZ)V
    .registers 8

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_5

    goto :goto_2a

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_11

    move-wide v2, v0

    goto :goto_13

    :cond_11
    iget-wide v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    :goto_13
    if-eqz p3, :cond_1a

    cmp-long p1, v2, v0

    if-nez p1, :cond_1a

    goto :goto_2a

    :cond_1a
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_2b

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    return-void
.end method

.method public final updateMultiPressTimeoutIfNeeded(IIJZ)V
    .registers 10

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_5e

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_9

    goto :goto_5e

    :cond_9
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_12

    if-nez p5, :cond_12

    goto :goto_5e

    :cond_12
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p1, :cond_24

    move-wide v2, v0

    goto :goto_2d

    :cond_24
    iget-wide v2, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    sget-wide v2, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_2d
    if-nez p5, :cond_38

    cmp-long p1, v2, v0

    if-eqz p1, :cond_38

    cmp-long p1, p3, v2

    if-gez p1, :cond_38

    goto :goto_5e

    :cond_38
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez p0, :cond_47

    goto :goto_5e

    :cond_47
    iget-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    cmp-long p5, p1, v0

    if-eqz p5, :cond_4e

    goto :goto_50

    :cond_4e
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    :goto_50
    cmp-long p1, p3, p1

    if-nez p1, :cond_55

    goto :goto_5e

    :cond_55
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_5c

    move-wide p3, v0

    :cond_5c
    iput-wide p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    :cond_5e
    :goto_5e
    return-void
.end method

.method public final updatePowerBehavior(I)V
    .registers 9

    and-int/lit8 v0, p1, 0x4

    const/16 v1, 0x66

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x1a

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-eqz v0, :cond_cf

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v0, p1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    const-string/jumbo v5, "power_button_long_press"

    const-string/jumbo v6, "PhoneWindowManagerExt"

    if-nez v0, :cond_46

    invoke-virtual {p1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p1

    const/16 v0, 0x3b7

    if-ne p1, v0, :cond_36

    const-string/jumbo p1, "updated long press power behavior by b2b dedicated app"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_36
    const-string/jumbo p1, "Side key long press info was wrong."

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_46
    iget-object p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-nez p1, :cond_5a

    const-string/jumbo p1, "Side key long press intent info was wrong."

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_5a
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    const-string/jumbo v0, "updateLongPressPowerBehavior componentName:"

    invoke-static {v0, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v0, :cond_8b

    const-string/jumbo v0, "aiAgentApp/aiAgentApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string/jumbo p1, "updated long press power behavior as digital assistant"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p1, 0x67

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_8b
    const-string/jumbo v0, "wakeBixby/wakeBixby"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string/jumbo p1, "updated long press power behavior as wake bixby"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p1, 0x65

    invoke-static {p0, v5, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_a6
    const-string/jumbo v0, "globalAction/globalAction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    const-string/jumbo p1, "updated long press power behavior as global action"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_bf
    const-string/jumbo p1, "updated long press power behavior as keyCustomizationInfo"

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_cf
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_d7

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    return-void

    :cond_d7
    and-int/lit8 v0, p1, 0x10

    const/16 v5, 0x6a

    const/4 v6, 0x2

    if-eqz v0, :cond_fb

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz p1, :cond_ea

    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    return-void

    :cond_ea
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result p0

    if-eq p0, v3, :cond_f8

    if-eq p0, v2, :cond_f8

    if-ne p0, v6, :cond_10e

    :cond_f8
    iput v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    return-void

    :cond_fb
    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-eqz p1, :cond_10e

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1, v0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result p1

    if-eq p1, v3, :cond_10c

    if-eq p1, v2, :cond_10c

    if-ne p1, v6, :cond_10e

    :cond_10c
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    :cond_10e
    return-void
.end method
