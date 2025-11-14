.class public final Lcom/android/server/usb/UsbAlsaJackDetector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbAlsaJackDetector"


# instance fields
.field public mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

.field public mStopJackDetect:Z


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    return-void
.end method

.method private static native nativeHasJackDetect(I)Z
.end method

.method private native nativeInputJackConnected(I)Z
.end method

.method private native nativeJackDetect(I)Z
.end method

.method private native nativeOutputJackConnected(I)Z
.end method

.method public static startJackDetect(Lcom/android/server/usb/UsbAlsaDevice;)Lcom/android/server/usb/UsbAlsaJackDetector;
    .locals 2

    iget v0, p0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeHasJackDetect(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/usb/UsbAlsaJackDetector;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbAlsaJackDetector;-><init>(Lcom/android/server/usb/UsbAlsaDevice;)V

    new-instance p0, Ljava/lang/Thread;

    const-string/jumbo v1, "USB jack detect thread"

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method


# virtual methods
.method public final isInputJackConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    iget v0, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeInputJackConnected(I)Z

    move-result p0

    return p0
.end method

.method public final isOutputJackConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    iget v0, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeOutputJackConnected(I)Z

    move-result p0

    return p0
.end method

.method public final jackDetectCallback()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v0

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionState(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v2

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    :goto_0
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final pleaseStop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mStopJackDetect:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaJackDetector;->mAlsaDevice:Lcom/android/server/usb/UsbAlsaDevice;

    iget v0, v0, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaJackDetector;->nativeJackDetect(I)Z

    return-void
.end method
