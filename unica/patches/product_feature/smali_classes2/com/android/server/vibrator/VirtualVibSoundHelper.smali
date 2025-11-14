.class public final Lcom/android/server/vibrator/VirtualVibSoundHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mIsVirtualSoundPlaying:Z

.field public final mSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mSoundPool:Landroid/media/SoundPool;

.field public mStreamId:I

.field public final mVirtualSoundId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const-string/jumbo v0, "VIRTUAL_VIB_SOUND"

    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    const-string v0, "/system/media/audio/ui/VIB_Vibration_Call.ogg"

    invoke-virtual {p1, v0, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    return-void
.end method


# virtual methods
.method public final playVirtualSoundIfNeeded(Ljava/lang/String;Landroid/os/VibrationAttributes;Z)V
    .registers 13

    if-nez p3, :cond_4

    goto/16 :goto_db

    :cond_4
    const-string/jumbo p3, "VIRTUAL_VIB_SOUND"

    invoke-virtual {p2, p3}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1a

    iget-object p3, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v0, "virtual_vibration_sound_allowance"

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_db

    :cond_1a
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p2

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    const-string/jumbo p3, "vibration_sound_enabled"

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_af

    const/16 p3, 0x21

    if-eq p2, p3, :cond_33

    goto/16 :goto_b8

    :cond_33
    iget-object p2, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_36
    iget-object p3, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez p3, :cond_41

    monitor-exit p2

    goto/16 :goto_b8

    :catchall_3d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ad

    :cond_41
    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p3

    if-eq p3, v1, :cond_4a

    monitor-exit p2

    goto/16 :goto_b8

    :cond_4a
    iget-object p3, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p3

    array-length v2, p3

    move v3, v0

    move v4, v3

    :goto_54
    if-ge v3, v2, :cond_80

    aget-object v5, p3, v3

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_75

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_69

    goto :goto_75

    :cond_69
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_72

    add-int/lit8 v4, v4, 0x1

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_75
    :goto_75
    const-string/jumbo p1, "VibrationCustomSettings"

    const-string/jumbo p3, "skip virtual sound: connected A2DP or USB_HEADSET"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    goto :goto_b8

    :cond_80
    const-string/jumbo p3, "VibrationCustomSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sco Devices:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", only watch connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnlyWatchConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_aa

    if-ne v4, v1, :cond_ab

    iget-boolean p1, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnlyWatchConnected:Z

    if-eqz p1, :cond_ab

    :cond_aa
    move v0, v1

    :cond_ab
    monitor-exit p2

    goto :goto_b8

    :goto_ad
    monitor-exit p2
    :try_end_ae
    .catchall {:try_start_36 .. :try_end_ae} :catchall_3d

    throw p0

    :cond_af
    const-string/jumbo p1, "VibrationCustomSettings"

    const-string/jumbo p2, "shouldSoundForRingerMode false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b8
    if-eqz v0, :cond_11d

    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_113

    iget p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    if-nez p1, :cond_c3

    goto :goto_113

    :cond_c3
    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget-object p2, p1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length p2, p2

    sub-int/2addr p2, v1

    const-string/jumbo p3, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v4, p1, p2

    const/4 p1, 0x0

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_dc

    :goto_db
    return-void

    :cond_dc
    const-string/jumbo p1, "VibratorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "play virtual sound: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " volume"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    iget p2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    const-string/jumbo p3, "stv_virtual_vib_sound"

    invoke-virtual {p1, p2, p3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    const/16 v7, 0x14

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    move v5, v4

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mStreamId:I

    return-void

    :cond_113
    :goto_113
    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo p1, "cannot play virtual sound"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11d
    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo p1, "skip virtual sound: shouldSoundForRingerMode false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopVirtualSound(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "stop virtual sound : "

    iget-boolean v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v2, "VibratorManagerService"

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mVirtualSoundId:I

    if-nez v1, :cond_13

    goto :goto_2c

    :cond_13
    :try_start_13
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mIsVirtualSoundPlaying:Z

    iget-object p1, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mSoundPool:Landroid/media/SoundPool;

    iget p0, p0, Lcom/android/server/vibrator/VirtualVibSoundHelper;->mStreamId:I

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->stop(I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    return-void

    :catch_25
    const-string/jumbo p0, "failed stopping virtual sound"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_2c
    :goto_2c
    const-string/jumbo p0, "cannot stop virtual sound"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method
