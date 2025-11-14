.class public abstract Lcom/samsung/android/server/audio/utils/AudioStreamUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getActiveStreamTypeInternal(IZ)I
    .registers 7

    :try_start_0
    const-string/jumbo v0, "l_stream_active"

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    move-exception v0

    const-string v1, "AS.AudioStreamUtils"

    const-string v2, "Can\'t get active stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_15
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_1c

    const/16 p0, 0xa

    return p0

    :cond_1c
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    return v2

    :cond_22
    and-int/lit16 v1, v0, 0x208

    const/4 v3, 0x3

    if-nez v1, :cond_54

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_54

    :cond_2e
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x4

    if-eqz v1, :cond_34

    return v2

    :cond_34
    and-int/lit8 v1, v0, 0x20

    const/4 v4, 0x5

    if-eqz v1, :cond_3a

    return v4

    :cond_3a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_41

    const/16 p0, 0xb

    return p0

    :cond_41
    const/4 v1, 0x1

    if-ne p0, v1, :cond_4d

    if-eqz p1, :cond_4b

    and-int/lit8 p0, v0, 0x4

    if-nez p0, :cond_4b

    return v3

    :cond_4b
    const/4 p0, 0x2

    return p0

    :cond_4d
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz p0, :cond_54

    if-nez p1, :cond_54

    return v4

    :cond_54
    :goto_54
    return v3
.end method
