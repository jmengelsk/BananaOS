.class public final Lcom/samsung/android/server/audio/MicModeManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final AVAILABLE_STREAM_TYPES:Ljava/util/List;

.field public static mCr:Landroid/content/ContentResolver;

.field public static sInstance:Lcom/samsung/android/server/audio/MicModeManager;

.field public static final sMicModeLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public mCurAudioMode:I

.field public mCurCallDevice:I

.field public mIsMicModeOn:Z

.field public final mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

.field public mPackageName:Ljava/lang/String;

.field public mStates:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1e

    const-string/jumbo v2, "Mic mode history"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "MicModeManager"

    const-string/jumbo v1, "initMicModeType() mMicModeType : "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    iput v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    :try_start_1b
    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->getMicModeType()Lcom/samsung/android/server/audio/MicModeType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_30} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_30} :catch_31

    return-void

    :catch_31
    const-string/jumbo p0, "initMicModeType: RuntimeException"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :catch_38
    const-string/jumbo p0, "initMicModeType: NullPointerException"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/MicModeManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/server/audio/MicModeManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/MicModeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->sInstance:Lcom/samsung/android/server/audio/MicModeManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final isMicModeSupported()Z
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isMicModeSupported() MicModeType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", audioMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", curDevice: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", translationState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dexState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", smartViewState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", gameChatState: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", wifiCallState: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", videoCallState: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", satelliteCallState: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", antiHowlingState: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "MicModeManager"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    iget v8, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    iget v9, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    invoke-virtual {v1, v0, v8, v9}, Lcom/samsung/android/server/audio/MicModeType;->isMicModeSupported(III)Z

    move-result v0

    if-eqz v0, :cond_d7

    const/16 v0, 0xd0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    goto :goto_d7

    :cond_ad
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    if-ne v0, v6, :cond_d0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    goto :goto_d7

    :cond_b8
    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d0

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result v0

    if-nez v0, :cond_d7

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_d0

    goto :goto_d7

    :cond_d0
    const-string/jumbo p0, "isMicModeSupported() MicMode ON"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_d7
    :goto_d7
    const/4 p0, 0x0

    return p0
.end method

.method public final isStateEnabled(I)Z
    .registers 2

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    and-int/2addr p0, p1

    if-lez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final setMicMode(Z)V
    .registers 5

    if-eqz p1, :cond_2c

    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mMicModeType:Lcom/samsung/android/server/audio/MicModeType;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->isStateEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_22

    :cond_14
    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-ne p1, v0, :cond_21

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MicModeType;->getVoipCallMicMode()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    :cond_21
    return-void

    :cond_22
    :goto_22
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MicModeType;->getCallMicMode()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    return-void

    :cond_2c
    const-string p1, ""

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    return-void
.end method

.method public final updateAudioDevice()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAudioDevice() audioMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MicModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    return-void
.end method

.method public final updateAudioMode(ILjava/lang/String;)V
    .registers 6

    iput-object p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateAudioMode() audioMode="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    const-string v1, ", caller="

    const-string v2, ", curCallDevice="

    invoke-static {v0, v1, p2, v2, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    const-string/jumbo v0, "MicModeManager"

    invoke-static {p1, p2, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurAudioMode:I

    if-nez p1, :cond_2a

    const/4 p1, 0x0

    const-string p2, ""

    invoke-virtual {p0, p1, p2, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    return-void
.end method

.method public final updateMicModeSettings(ILjava/lang/String;Z)V
    .registers 9

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mIsMicModeOn:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "MicModeManager"

    if-eq v0, p3, :cond_23

    iput-boolean p3, p0, Lcom/samsung/android/server/audio/MicModeManager;->mIsMicModeOn:Z

    const-string/jumbo v0, "updateMicModeSettings is enabled "

    const-string v3, ", effect:"

    const-string v4, ", "

    invoke-static {p1, v0, v3, v4, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->sMicModeLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string/jumbo p0, "mic_mode_enable"

    if-eqz p3, :cond_65

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateMicModeSettings() enable, effect:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", caller:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    invoke-static {p3, p0, v0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo p3, "mic_mode_effect"

    invoke-static {p0, p3, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo p1, "mic_mode_package"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_59
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_60

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_60
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_65
    const-string/jumbo p1, "updateMicModeSettings() disable"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    invoke-static {p1, p0, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public final updateState(IZ)V
    .registers 5

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    if-eqz p2, :cond_6

    or-int/2addr v0, p1

    goto :goto_8

    :cond_6
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lcom/samsung/android/server/audio/MicModeManager;->mStates:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    sget-object p1, Lcom/samsung/android/server/audio/MicModeManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "mic_mode_wificall"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->isMicModeSupported()Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, ""

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Lcom/samsung/android/server/audio/MicModeManager;->updateMicModeSettings(ILjava/lang/String;Z)V

    return-void

    :cond_2a
    if-nez p2, :cond_2f

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MicModeManager;->setMicMode(Z)V

    :cond_2f
    return-void
.end method
