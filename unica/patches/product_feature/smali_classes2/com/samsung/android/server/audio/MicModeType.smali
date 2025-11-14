.class public abstract enum Lcom/samsung/android/server/audio/MicModeType;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/audio/MicModeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/audio/MicModeType;

.field public static final AVAILABLE_DEVICE_TYPES:Ljava/util/List;

.field public static final enum NONE:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_2MIC:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_2MIC_VOICE:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_3MIC:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_DEFAULT:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_QP:Lcom/samsung/android/server/audio/MicModeType;

.field public static final enum TYPE_VOICE:Lcom/samsung/android/server/audio/MicModeType;

.field public static final sMicModeParamTable:Landroid/util/ArrayMap;


# instance fields
.field private mCallMicMode:I

.field private mVoipCallMicMode:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/server/audio/MicModeType$1;

    const-string/jumbo v1, "NONE"

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v1}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->NONE:Lcom/samsung/android/server/audio/MicModeType;

    new-instance v1, Lcom/samsung/android/server/audio/MicModeType$2;

    const-string/jumbo v2, "TYPE_QP"

    const/4 v8, 0x1

    invoke-direct {v1, v8, v8, v2}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/server/audio/MicModeType;->TYPE_QP:Lcom/samsung/android/server/audio/MicModeType;

    new-instance v2, Lcom/samsung/android/server/audio/MicModeType$3;

    const-string/jumbo v3, "TYPE_2MIC"

    const/4 v9, 0x2

    invoke-direct {v2, v9, v9, v3}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC:Lcom/samsung/android/server/audio/MicModeType;

    new-instance v3, Lcom/samsung/android/server/audio/MicModeType$4;

    const-string/jumbo v4, "TYPE_3MIC"

    const/4 v10, 0x3

    invoke-direct {v3, v10, v10, v4}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/server/audio/MicModeType;->TYPE_3MIC:Lcom/samsung/android/server/audio/MicModeType;

    new-instance v4, Lcom/samsung/android/server/audio/MicModeType$5;

    const-string/jumbo v5, "TYPE_2MIC_VOICE"

    const/4 v11, 0x4

    invoke-direct {v4, v11, v11, v5}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    new-instance v5, Lcom/samsung/android/server/audio/MicModeType$6;

    const-string/jumbo v6, "TYPE_VOICE"

    const/4 v12, 0x5

    invoke-direct {v5, v12, v12, v6}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/server/audio/MicModeType;->TYPE_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    new-instance v6, Lcom/samsung/android/server/audio/MicModeType$7;

    const-string/jumbo v12, "TYPE_DEFAULT"

    const/4 v13, 0x6

    invoke-direct {v6, v13, v13, v12}, Lcom/samsung/android/server/audio/MicModeType;-><init>(IILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/server/audio/MicModeType;->TYPE_DEFAULT:Lcom/samsung/android/server/audio/MicModeType;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/server/audio/MicModeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->$VALUES:[Lcom/samsung/android/server/audio/MicModeType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->AVAILABLE_DEVICE_TYPES:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/server/audio/MicModeType$8;

    invoke-direct {v0}, Lcom/samsung/android/server/audio/MicModeType$8;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode=0"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode_call=0"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode_call=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    iput p2, p0, Lcom/samsung/android/server/audio/MicModeType;->type:I

    return-void
.end method

.method public static getMicModeType()Lcom/samsung/android/server/audio/MicModeType;
    .locals 10

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MICMODE_QUICK_PANEL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->TYPE_QP:Lcom/samsung/android/server/audio/MicModeType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_EFFECTS_VIDEOCALL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getMicModeFeature() floatingVideoCallFeature : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MicModeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DEFAULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->TYPE_DEFAULT:Lcom/samsung/android/server/audio/MicModeType;

    return-object v0

    :cond_1
    const-string v1, "3MIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->TYPE_3MIC:Lcom/samsung/android/server/audio/MicModeType;

    return-object v0

    :cond_2
    const-string v1, "2MIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC:Lcom/samsung/android/server/audio/MicModeType;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    return-object v4

    :cond_3
    const-string v3, "2MIC;VOICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lcom/samsung/android/server/audio/MicModeType;->TYPE_2MIC_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    return-object v6

    :cond_4
    const-string/jumbo v5, "VOICE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v7, Lcom/samsung/android/server/audio/MicModeType;->TYPE_VOICE:Lcom/samsung/android/server/audio/MicModeType;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    return-object v7

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v8, "CscFeature_Audio_ConfigEffectsVideoCall"

    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getMicModeFeature() cscVideoCallFeature : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    return-object v4

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableFor2Mic()V

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    return-object v6

    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/samsung/android/server/audio/MicModeType;->updateParamTableForVoice()V

    return-object v7

    :cond_8
    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->NONE:Lcom/samsung/android/server/audio/MicModeType;

    return-object v0
.end method

.method public static isStateEnabled(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateParamTableFor2Mic()V
    .locals 3

    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode_2mic=0"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode_2mic=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_mic_input_control_mode_2mic=2"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateParamTableForVoice()V
    .locals 3

    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->sMicModeParamTable:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_call_nc_booster_enable=0"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "l_call_nc_booster_enable=1"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/audio/MicModeType;
    .locals 1

    const-class v0, Lcom/samsung/android/server/audio/MicModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/MicModeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/audio/MicModeType;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/audio/MicModeType;->$VALUES:[Lcom/samsung/android/server/audio/MicModeType;

    invoke-virtual {v0}, [Lcom/samsung/android/server/audio/MicModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/audio/MicModeType;

    return-object v0
.end method


# virtual methods
.method public final getCallMicMode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getCallMicMode callMicMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    const-string/jumbo v2, "MicModeManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    return p0
.end method

.method public final getCallModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid mode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "MODE_CALL_FOCUS_ON_VOICE"

    return-object p0

    :cond_1
    const-string/jumbo p0, "MODE_CALL_STANDARD"

    return-object p0

    :cond_2
    const-string/jumbo p0, "MODE_FOCUS_ON_ALL_SOUNDS"

    return-object p0

    :cond_3
    const-string/jumbo p0, "MODE_FOCUS_ON_VOICE"

    return-object p0

    :cond_4
    const-string/jumbo p0, "MODE_STANDARD"

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->type:I

    return p0
.end method

.method public abstract getTypeToString()Ljava/lang/String;
.end method

.method public final getVoipCallMicMode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getVoipCallMicMode voipCallMicMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    const-string/jumbo v2, "MicModeManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    return p0
.end method

.method public abstract isMicModeSupported(III)Z
.end method

.method public abstract restoreMicMode(Landroid/content/ContentResolver;)V
.end method

.method public final restoreMode(Landroid/content/ContentResolver;)V
    .locals 2

    const-string/jumbo v0, "call_mic_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    const-string/jumbo v0, "voip_call_mic_mode"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "restoreMicMode callMicMode = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", voipCallMicMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    const-string/jumbo v0, "MicModeManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final setCallMicMode(ILandroid/content/ContentResolver;)V
    .locals 2

    const-string/jumbo v0, "setCallMicMode callMicMode = "

    const-string/jumbo v1, "MicModeManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mCallMicMode:I

    const-string/jumbo p0, "mic_mode_effect"

    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string/jumbo p0, "call_mic_mode"

    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public abstract setMicInputControlMode(Landroid/content/ContentResolver;Lcom/samsung/android/media/AudioParameter;)V
.end method

.method public final setVoipCallMicMode(ILandroid/content/ContentResolver;)V
    .locals 2

    const-string/jumbo v0, "setVoipCallMicMode voipCallMicMode = "

    const-string/jumbo v1, "MicModeManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType;->mVoipCallMicMode:I

    const-string/jumbo p0, "mic_mode_effect"

    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string/jumbo p0, "voip_call_mic_mode"

    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method
