.class public final Lcom/android/server/usb/UsbAlsaDevice;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DIRECTION_STR:[Ljava/lang/String;


# instance fields
.field public final mAlsaCardDeviceString:Ljava/lang/String;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mCardNum:I

.field public final mDeviceAddress:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public final mDeviceType:[I

.field public final mHasDevice:[Z

.field public mHasJackDetect:Z

.field public final mIsDock:Z

.field public final mIsHeadset:[Z

.field public final mIsSelected:[Z

.field public mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

.field public final mState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "INPUT"

    const-string/jumbo v1, "OUTPUT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/IAudioService;ILjava/lang/String;ZZZZZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    new-array v4, v0, [Z

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    iput p2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iput-object p3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    aput-boolean p4, v1, v0

    const/4 p1, 0x0

    aput-boolean p5, v1, p1

    aput-boolean p6, v2, p1

    aput-boolean p7, v2, v0

    iput-boolean p8, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    aget-boolean p2, v1, p1

    if-eqz p2, :cond_1

    if-eqz p6, :cond_0

    const/high16 p2, -0x7e000000

    goto :goto_0

    :cond_0
    const p2, -0x7ffff000

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    aput p2, v3, p1

    aget-boolean p2, v1, v0

    if-eqz p2, :cond_4

    if-eqz p8, :cond_2

    const/16 p1, 0x1000

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    const/high16 p1, 0x4000000

    goto :goto_1

    :cond_3
    const/16 p1, 0x4000

    :cond_4
    :goto_1
    aput p1, v3, v0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    return-void
.end method

.method private native nativeSetVolume(IF)V
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/usb/UsbAlsaDevice;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    iget v0, p1, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    iget-boolean p1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlsaCardDeviceString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    if-ltz p0, :cond_0

    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    const-string/jumbo v0, "card="

    const-string v1, ";device=0"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid alsa card or device alsaCard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " alsaDevice: 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UsbAlsaDevice"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x1f

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v3, 0x1

    aget-boolean v4, v2, v3

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    mul-int/2addr v1, v0

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsHeadset:[Z

    aget-boolean v4, v2, v4

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    mul-int/2addr v1, v0

    aget-boolean v2, v2, v3

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsDock:Z

    xor-int/2addr p0, v3

    add-int/2addr v1, p0

    return v1
.end method

.method public final startDevice(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    const/4 v2, 0x0

    aput v2, v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaJackDetector;->startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasJackDetect:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    monitor-exit p0

    :goto_1
    if-ne p1, v1, :cond_4

    const-string/jumbo v0, "UsbAlsaDevice"

    const-string/jumbo v2, "skip : nativeSetVolume set to 1.0f"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stopInput()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_2
    :goto_2
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v1, v1}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit p0

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aput-boolean v1, v0, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method public final declared-synchronized stopOutput()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    const/4 v1, 0x1

    aget-boolean v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->pleaseStop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_2
    :goto_2
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit p0

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aput-boolean v2, v0, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    const-string v0, ", device: 0, name: "

    const-string/jumbo v1, "UsbAlsaDevice: [card: "

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hasOutput: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasInput: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateWiredDeviceConnectionState(IZ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mIsSelected:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "UsbAlsaDevice"

    const-string/jumbo p1, "Updating wired device connection state on unselected device"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    const-string/jumbo p0, "UsbAlsaDevice"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to set device connection state as "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device type is none"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo p0, "UsbAlsaDevice"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to update "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " device connection state failed as alsa card device string is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string/jumbo v0, "UsbAlsaDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pre-call device:0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v3, v3, p1

    const-string v4, " addr:"

    invoke-static {v3, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    monitor-exit p0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/usb/UsbAlsaJackDetector;->isInputJackConnected()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mJackDetector:Lcom/android/server/usb/UsbAlsaJackDetector;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_5

    monitor-exit p0

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/usb/UsbAlsaJackDetector;->isOutputJackConnected()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    :goto_1
    const-string/jumbo v3, "UsbAlsaDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " JACK connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    move p2, v0

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaDevice;->mState:[I

    aget v3, v2, p1

    if-eq p2, v3, :cond_7

    aput p2, v2, p1

    new-instance v2, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAlsaCardDeviceString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_5
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string/jumbo v3, "UsbAlsaDevice"

    invoke-interface {p0, v2, p2, v3}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    return v0

    :catch_0
    const-string/jumbo p0, "UsbAlsaDevice"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "RemoteException in setWiredDeviceConnectionState for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/usb/UsbAlsaDevice;->DIRECTION_STR:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    return v0

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final declared-synchronized updateWiredDeviceConnectionStateByBundle(Z)V
    .locals 5

    const-string v0, "INPUT addr:"

    const-string/jumbo v1, "OUTPUT addr:"

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "UsbAlsaDevice"

    const-string/jumbo v3, "updateWiredDeviceConnectionStateByBundle()"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->getAlsaCardDeviceString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo p1, "UsbAlsaDevice"

    const-string/jumbo v0, "no alsaCardDeviceString"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    const-string/jumbo v3, "UsbAlsaDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const/high16 v4, 0x4000000

    invoke-direct {v1, v4, v2, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string/jumbo v4, "UsbAlsaDevice"

    invoke-interface {v3, v1, p1, v4}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    const-string/jumbo v1, "UsbAlsaDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " name:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const/high16 v3, -0x7e000000

    invoke-direct {v0, v3, v2, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaDevice;->mAudioService:Landroid/media/IAudioService;

    const-string/jumbo v2, "UsbAlsaDevice"

    invoke-interface {v1, v0, p1, v2}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string/jumbo p1, "UsbAlsaDevice"

    const-string/jumbo v0, "RemoteException in updateWiredDeviceConnectionStateByBundle"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
