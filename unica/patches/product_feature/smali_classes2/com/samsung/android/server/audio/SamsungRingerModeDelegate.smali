.class public final Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# instance fields
.field public mAudioManager:Landroid/media/AudioManagerInternal;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mNm:Landroid/app/NotificationManager;

.field public mZenMode:I


# virtual methods
.method public final canVolumeDownEnterSilent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final getRingerModeAffectedStreams(I)I
    .registers 2

    or-int/lit16 p0, p1, 0x126

    return p0
.end method

.method public final onChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    iget-object v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    if-ne p1, v0, :cond_14

    goto :goto_18

    :cond_14
    if-eqz p1, :cond_19

    if-eqz v0, :cond_19

    :goto_18
    return-void

    :cond_19
    iget-object p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {p1}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string/jumbo v0, "SamsungRingerModeDelegate"

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    return-void
.end method

.method public final onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 6

    return p2
.end method

.method public final onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_7

    goto :goto_11

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "SamsungRingerModeDelegate"

    return-object p0
.end method
