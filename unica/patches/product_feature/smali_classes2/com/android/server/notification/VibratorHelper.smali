.class public final Lcom/android/server/notification/VibratorHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_VIBRATE_PATTERN:[J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultPattern:[J

.field public final mDefaultPwlePattern:[F

.field public final mDefaultVibrationAmplitude:I

.field public final mFallbackPattern:[J

.field public final mFallbackPwlePattern:[F

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    const v2, 0x10700cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-nez v0, :cond_21

    move-object v5, v1

    goto :goto_34

    :cond_21
    array-length v4, v0

    if-le v4, v3, :cond_26

    move v4, v3

    goto :goto_27

    :cond_26
    array-length v4, v0

    :goto_27
    new-array v5, v4, [J

    move v6, v2

    :goto_2a
    if-ge v6, v4, :cond_34

    aget v7, v0, v6

    int-to-long v7, v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_34
    :goto_34
    iput-object v5, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1070135

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_44

    goto :goto_55

    :cond_44
    array-length v1, v0

    if-le v1, v3, :cond_48

    goto :goto_49

    :cond_48
    array-length v3, v0

    :goto_49
    new-array v1, v3, [J

    :goto_4b
    if-ge v2, v3, :cond_55

    aget v4, v0, v2

    int-to-long v4, v4

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_55
    :goto_55
    iput-object v1, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700ce

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070136

    invoke-static {v0, v1}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultVibrationAmplitude:I

    iput-object p1, p0, Lcom/android/server/notification/VibratorHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    array-length v1, p0

    if-eqz v1, :cond_45

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_c

    goto :goto_45

    :cond_c
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_31

    add-int/lit8 v4, v3, 0x2

    aget v4, p0, v4

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    aget v5, p0, v3

    invoke-static {v5}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    invoke-static {v6}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    add-int/lit8 v3, v3, 0x3

    goto :goto_11

    :cond_31
    invoke-virtual {v2}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v1

    if-eqz p1, :cond_44

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_43} :catch_46

    return-object p0

    :cond_44
    return-object v1

    :cond_45
    :goto_45
    return-object v0

    :catch_46
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error creating vibration PWLE waveform with pattern: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "NotificationVibratorHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static createWaveformVibration([JZ)Landroid/os/VibrationEffect;
    .registers 3

    if-eqz p0, :cond_24

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, -0x1

    :goto_7
    :try_start_7
    invoke-static {p0, p1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error creating vibration waveform with pattern: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "NotificationVibratorHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .registers 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_25

    const/high16 v2, 0x7fc00000  # Float.NaN

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_23

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catchall_23
    move-exception p1

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :goto_29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public final createDefaultVibration(Z)Landroid/os/VibrationEffect;
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_25

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0}, Landroid/media/Utils;->getVibrationUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/media/Utils;->parseVibrationEffect(Landroid/os/Vibrator;Landroid/net/Uri;)Landroid/os/VibrationEffect;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_25

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "NotificationVibratorHelper"

    const-string v3, "Failed to get vibration effect: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    if-eqz v1, :cond_28

    return-object v1

    :cond_28
    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPwlePattern:[F

    invoke-static {v0, p1}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_39

    return-object v0

    :cond_39
    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mDefaultPattern:[J

    invoke-static {p0, p1}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public final vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v5

    const/16 v1, 0x3e8

    const-string/jumbo v2, "android"

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method
