.class public abstract Lcom/android/server/vibrator/SemVibration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAttrs:Landroid/os/VibrationAttributes;

.field public final mDeviceId:I

.field public final mEffect:Landroid/os/CombinedVibration;

.field public final mIndex:I

.field public final mMagnitude:I

.field public final mOpPkg:Ljava/lang/String;

.field public final mReason:Ljava/lang/String;

.field public final mRepeat:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/SemVibrationBundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mAttrs:Landroid/os/VibrationAttributes;

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mUid:I

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mDeviceId:I

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mDeviceId:I

    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mOpPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mEffect:Landroid/os/CombinedVibration;

    iput-object v0, p0, Lcom/android/server/vibrator/SemVibration;->mEffect:Landroid/os/CombinedVibration;

    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mIndex:I

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    iget v0, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mRepeat:I

    iput v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    iget p1, p1, Lcom/android/server/vibrator/SemVibrationBundle;->mMagnitude:I

    iput p1, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    sget-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-nez p1, :cond_36

    new-instance p1, Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-direct {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    sput-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    :cond_36
    sget-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iput-object p1, p0, Lcom/android/server/vibrator/SemVibration;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-void
.end method


# virtual methods
.method public final commonValidation()Z
    .registers 4

    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    const/4 v1, 0x0

    const-string/jumbo v2, "VibratorManagerService"

    if-gtz v0, :cond_f

    const-string/jumbo p0, "magnitude value is under 0"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    iget v0, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    if-lez v0, :cond_1a

    const-string/jumbo p0, "repeat value is wrong."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1a
    iget-object p0, p0, Lcom/android/server/vibrator/SemVibration;->mToken:Landroid/os/IBinder;

    if-nez p0, :cond_25

    const-string/jumbo p0, "token is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 7

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    iget-object v4, p0, Lcom/android/server/vibrator/SemVibration;->mOpPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/vibrator/SemVibration;->mReason:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/vibrator/SemVibration;->mUid:I

    iget v3, p0, Lcom/android/server/vibrator/SemVibration;->mDeviceId:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCommonLog()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mIndex:I

    invoke-static {v1}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getPatternTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0xc368

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/SemVibration;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/SemVibration;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), magnitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vibrator/SemVibration;->mMagnitude:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getVibration()Lcom/android/server/vibrator/HalVibration;
.end method
