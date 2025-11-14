.class public final Lcom/android/server/wm/TspStateController$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-string v5, "1"

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$H;->this$0:Lcom/android/server/wm/TspStateController;

    if-eq v0, v2, :cond_a4

    if-eq v0, v1, :cond_42

    const/4 p1, 0x3

    if-eq v0, p1, :cond_13

    goto/16 :goto_1cd

    :cond_13
    iget-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    const-string/jumbo v0, "tspstatemanager"

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    if-eqz p1, :cond_2e

    const-string/jumbo p1, "finishScreenTurningOn TSP_COMMAND_TYPE_PORT"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    return-void

    :cond_2e
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    if-eqz p1, :cond_1cd

    const-string/jumbo p1, "finishScreenTurningOn TSP_COMMAND_TYPE_LAND"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    return-void

    :cond_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1cd

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    if-nez v0, :cond_5a

    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    :cond_5a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_60

    goto/16 :goto_1cd

    :cond_60
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    if-nez v0, :cond_69

    invoke-virtual {v1}, Lcom/android/server/wm/TspGripCommand;->reset()V

    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "default_input_method"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string/jumbo v2, "SamsungKeypad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string/jumbo v2, "honeyboard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    :cond_8e
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    :cond_93
    if-eqz p1, :cond_9e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    if-eqz v0, :cond_9e

    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)V

    :cond_9e
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mImeWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspStateController;->updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V

    return-void

    :cond_a4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1cd

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    const-string v6, "0"

    if-eqz v0, :cond_d6

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    if-eqz v0, :cond_c7

    iget-object v7, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v7, :cond_c1

    iget-boolean v7, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-nez v7, :cond_c7

    :cond_c1
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    invoke-virtual {p0, v4, v6, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    goto :goto_d6

    :cond_c7
    if-nez v0, :cond_d6

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_d6

    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsImmShowing:Z

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    :cond_d6
    :goto_d6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    if-eqz v0, :cond_ec

    if-eqz p1, :cond_ec

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsTspNoteMode:Z

    iget-boolean v4, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    if-eq v4, v0, :cond_ec

    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    if-eqz v0, :cond_e7

    goto :goto_e8

    :cond_e7
    move-object v5, v6

    :goto_e8
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    :cond_ec
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-nez v0, :cond_f2

    goto/16 :goto_1cd

    :cond_f2
    if-eqz p1, :cond_11c

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_11c

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mImeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_11c

    iget-boolean v4, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    if-eqz v4, :cond_11c

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_10b

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10b
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_114

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_114
    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_11c
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    if-eqz p1, :cond_1ca

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-lt v0, v4, :cond_133

    const/16 v4, 0xbb7

    if-gt v0, v4, :cond_133

    move v0, v2

    goto :goto_134

    :cond_133
    move v0, v3

    :goto_134
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_LARGE_FLIP_COVER:Z

    if-eqz v4, :cond_140

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-ne v4, v2, :cond_140

    move v4, v2

    goto :goto_141

    :cond_140
    move v4, v3

    :goto_141
    if-nez v0, :cond_170

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_16e

    const-string/jumbo v5, "com.sec.android."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16f

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16f

    const-string/jumbo v5, "com.samsung."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16f

    const-string/jumbo v5, "com.android.settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    goto :goto_16f

    :cond_16e
    move v2, v3

    :cond_16f
    :goto_16f
    move v0, v2

    :cond_170
    if-nez v0, :cond_1b8

    if-eqz v4, :cond_17a

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mFlipCover3rdPartyCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    goto :goto_1b8

    :cond_17a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_USE_SMALLER_GRIPZONE_ON_GAME:Z

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    if-nez v0, :cond_189

    new-instance v0, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {v0}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    :cond_189
    :try_start_189
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mGameManager:Lcom/samsung/android/game/SemGameManager;

    if-eqz v0, :cond_1ab

    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->isForegroundGame()Z

    move-result v3
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_191} :catch_192

    goto :goto_1ab

    :catch_192
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Exception in checking isForegroundGame, "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "TspStateManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ab
    :goto_1ab
    if-eqz v3, :cond_1b3

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    goto :goto_1b8

    :cond_1b3
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    :cond_1b8
    :goto_1b8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mTspDeadzone:Landroid/os/Bundle;

    if-eqz v4, :cond_1c5

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCoverDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    goto :goto_1c7

    :cond_1c5
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    :goto_1c7
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Landroid/os/Bundle;)V

    :cond_1ca
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TspStateController;->updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V

    :cond_1cd
    :goto_1cd
    return-void
.end method
