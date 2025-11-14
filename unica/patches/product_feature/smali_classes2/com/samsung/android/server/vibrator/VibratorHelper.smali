.class public final Lcom/samsung/android/server/vibrator/VibratorHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final PKG_ACT_ALWAYS:Ljava/lang/String;

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

.field public static sIsFrequencySupported:Z

.field public static sIsHapticEngineSupported:Z

.field public static sMotorType:I


# instance fields
.field public final mChangedPatternHash:Ljava/util/HashMap;

.field public mRingAmplitudes:[I

.field public mSepIndex:I

.field public mSystemAmplitudes:[I

.field public final mVibePatternHash:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/vibrator/VibRune;->DND_EXCEPTION_PACKAGES:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    sget-boolean p0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->PKG_ACT_ALWAYS:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static getMotorTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "MOTOR_LINEAR_1030"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "MOTOR_LINEAR_RCVMOT"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "MOTOR_LINEAR_1040"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "MOTOR_LINEAR_0832RC"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "MOTOR_LINEAR_INDEX"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "MOTOR_COIN_DC_INDEX"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "MOTOR_COIN_DC_PMIC"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "MOTOR_LINEAR_0832"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "MOTOR_COIN_DC"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "MOTOR_NONE"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSepIndex(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final copyPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    iput-object p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    iget p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    iget-object p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    iput-object p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    iget p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    iget p1, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    iput-object p0, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createIndexDurationInfo(II)V
    .locals 2

    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    add-int/lit8 p2, p2, 0x64

    iput p2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createPatternInfo(ILandroid/content/res/Resources;III)V
    .locals 9

    new-instance v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-ge v4, v2, :cond_1

    aget v7, v1, v4

    if-ne v7, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v2, v5, [J

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_2

    aget v7, v1, v4

    int-to-long v7, v7

    aput-wide v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iput-object v2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    iput p4, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p4

    move v1, v3

    :goto_3
    array-length v2, p4

    if-ge v1, v2, :cond_4

    aget v2, p4, v1

    if-ne v2, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_4
    const/4 v2, 0x0

    if-gez v1, :cond_5

    move-object v5, v2

    goto :goto_5

    :cond_5
    array-length v4, p4

    sub-int/2addr v4, v1

    new-array v5, v4, [I

    invoke-static {p4, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    if-nez v5, :cond_6

    filled-new-array {v6, v6}, [I

    move-result-object v5

    :cond_6
    iput-object v5, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    const/16 p4, 0x64

    add-int/2addr p5, p4

    iput p5, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    iput p4, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->scale:I

    const/16 p4, 0x2710

    if-lt p1, p4, :cond_7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    :cond_7
    iput-object v2, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->hybrid:[I

    iget-object p2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "mVibePatternHash.put("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pattern), mVibePatternHash.size() : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VibratorHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getEngineData(I)[I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->engine:[I

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "getEngineData(), IndexOutOfBoundsException occurred, type:"

    const-string v1, ", index:"

    const-string/jumbo v2, "VibratorHelper"

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final getIndexDuration(I)I
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    iget p0, p0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    return p0

    :cond_0
    const/16 p0, 0x1388

    return p0
.end method

.method public final getPatternByIndex(I)[J
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->pattern:[J

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPatternByIndex(), index out of bound, mVibePatternHash:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", index:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "VibratorHelper"

    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [J

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public final getPatternFrequencyByIndex(I)I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSepIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/samsung/android/server/vibrator/PatternInfo;->frequency:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPatternFrequencyByIndex(), index out of bound, mVibePatternHash:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", type:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", index:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "VibratorHelper"

    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/vibrator/PatternInfo;

    return-object p0
.end method

.method public final getResourceIndexData(I)[Lcom/samsung/android/server/vibrator/CommonPatternInfo;
    .locals 9

    const-string/jumbo v0, "VibratorHelper"

    const-string/jumbo v1, "get resource index data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getEngineData(I)[I

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x4

    new-array v0, p1, [Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v2, v1, 0x4

    new-instance v3, Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    add-int/lit8 v4, v2, 0x2

    aget v6, p0, v4

    add-int/lit8 v4, v2, 0x1

    aget v7, p0, v4

    add-int/lit8 v2, v2, 0x3

    aget v8, p0, v2

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/server/vibrator/CommonPatternInfo;-><init>(IIIII)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
