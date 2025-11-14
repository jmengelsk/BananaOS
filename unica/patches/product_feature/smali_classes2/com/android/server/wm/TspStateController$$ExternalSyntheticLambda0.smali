.class public final synthetic Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TspStateController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TspStateController;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TspStateController;

    iput-boolean p2, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TspStateController;

    iget-boolean v1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const-string/jumbo v4, "TspStateManager"

    if-eqz v3, :cond_a

    iget-boolean v3, v0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_9

    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x5

    const-string/jumbo v7, "]"

    const-string/jumbo v8, "["

    const-string/jumbo v9, "tspstatemanager"

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    iget-object v10, v0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string/jumbo v7, "]window : "

    const-string v10, ": "

    invoke-static {v2, v8, v7, p0, v10}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-virtual {v7, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setGripData(Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setNoteMode(I)I

    goto :goto_1

    :cond_3
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v10, :cond_4

    const-string v10, "1"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v11, v10, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v11, v3, :cond_4

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    if-ne v10, v1, :cond_4

    const-string/jumbo p0, "physical keyboard being exposed. ignore it."

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSipMode(I)I

    :goto_1
    const-string/jumbo v7, "wrote command: cmd="

    const-string v8, ", type="

    invoke-static {v2, v7, p0, v8, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v2, v6, :cond_9

    iget-object v4, v0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    if-eq v2, v3, :cond_8

    if-eq v2, v1, :cond_7

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6

    if-eq v2, v5, :cond_5

    goto :goto_2

    :cond_5
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mHoleCommand:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLandCommand:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mPortCommand:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean v1, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "setting_last_grip_cmd"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "setting_last_note_mode"

    iget-object v0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    return-void

    :cond_a
    const-string/jumbo p0, "mSemInputDeviceManager is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
