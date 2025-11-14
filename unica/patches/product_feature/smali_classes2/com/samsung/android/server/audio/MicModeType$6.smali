.class final enum Lcom/samsung/android/server/audio/MicModeType$6;
.super Lcom/samsung/android/server/audio/MicModeType;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public final getTypeToString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "TYPE_VOICE"

    return-object p0
.end method

.method public final isMicModeSupported(III)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-static {p3, p0}, Lcom/samsung/android/server/audio/MicModeType;->isStateEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    sget-object p1, Lcom/samsung/android/server/audio/MicModeType;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3, v0}, Lcom/samsung/android/server/audio/MicModeType;->isStateEnabled(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final restoreMicMode(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeType;->restoreMode(Landroid/content/ContentResolver;)V

    sget-object p1, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeType;->getCallMicMode()I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final setMicInputControlMode(Landroid/content/ContentResolver;Lcom/samsung/android/media/AudioParameter;)V
    .locals 1

    const-string/jumbo v0, "l_call_nc_booster_enable"

    invoke-virtual {p2, v0}, Lcom/samsung/android/media/AudioParameter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/MicModeType;->setCallMicMode(ILandroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method
