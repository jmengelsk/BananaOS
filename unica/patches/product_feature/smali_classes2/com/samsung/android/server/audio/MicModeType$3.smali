.class final enum Lcom/samsung/android/server/audio/MicModeType$3;
.super Lcom/samsung/android/server/audio/MicModeType;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final getTypeToString()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "TYPE_2MIC"

    return-object p0
.end method

.method public final isMicModeSupported(III)Z
    .registers 4

    const/4 p0, 0x3

    if-ne p1, p0, :cond_f

    const/4 p0, 0x2

    if-ne p2, p0, :cond_f

    const/4 p0, 0x1

    invoke-static {p3, p0}, Lcom/samsung/android/server/audio/MicModeType;->isStateEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_f

    :cond_e
    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public final restoreMicMode(Landroid/content/ContentResolver;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeType;->restoreMode(Landroid/content/ContentResolver;)V

    sget-object p1, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeType;->getVoipCallMicMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final setMicInputControlMode(Landroid/content/ContentResolver;Lcom/samsung/android/media/AudioParameter;)V
    .registers 4

    const-string/jumbo v0, "l_mic_input_control_mode_2mic"

    invoke-virtual {p2, v0}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/MicModeType;->setVoipCallMicMode(ILandroid/content/ContentResolver;)V

    :cond_10
    return-void
.end method
