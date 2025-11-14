.class public final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCurrentRequest:I

.field public mCurrentUsbFunctionsRequested:Z

.field public final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_12
    monitor-enter p1
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_12 .. :try_end_13} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_3f

    const-wide/16 p3, 0x0

    :try_start_15
    iput-wide p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    const/16 p3, 0xa

    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/16 p3, 0x17

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_3b

    :try_start_28
    new-instance p1, Ljava/io/File;

    const-string p3, "/sys/class/android_usb/android0/state"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/util/NoSuchElementException; {:try_start_28 .. :try_end_3a} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_3f

    return-void

    :catchall_3b
    move-exception v0

    move-object p0, v0

    :try_start_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3b

    :try_start_3e
    throw p0
    :try_end_3f
    .catch Ljava/util/NoSuchElementException; {:try_start_3e .. :try_end_3f} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p1, "UsbDeviceManager"

    const-string p2, "Error initializing UsbHandler"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_4c
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p1, "UsbDeviceManager"

    const-string/jumbo p2, "Usb gadget hal not found"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_59
    return-void
.end method


# virtual methods
.method public final getUsbSpeedCb(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_17c

    :pswitch_7  #0x14, 0x15
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_b  #0x17
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    if-nez p1, :cond_19

    const-string/jumbo p0, "UsbDeviceManager"

    const-string/jumbo p1, "mUsbGadgetHal is null"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    :try_start_19
    invoke-interface {p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getGadgetHalVersion()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p1, "UsbDeviceManager"

    const-string/jumbo v0, "update Usb gadget version failed"

    invoke-static {p1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16e

    :pswitch_2e  #0x16
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    if-nez p1, :cond_4e

    const-string/jumbo p1, "UsbDeviceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mGadgetHal is null, operationId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4e
    int-to-long v0, p0

    :try_start_4f
    invoke-interface {p1, v0, v1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getUsbSpeed(J)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception p0

    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p1, "UsbDeviceManager"

    const-string/jumbo v0, "get UsbSpeed failed"

    invoke-static {p1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16e

    :pswitch_61  #0x13
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6a
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    if-nez v3, :cond_7b

    const-string/jumbo p0, "UsbDeviceManager"

    const-string/jumbo p1, "reset Usb Gadget mUsbGadgetHal is null"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_79

    return-void

    :catchall_79
    move-exception p0

    goto :goto_a0

    :cond_7b
    const/16 v3, 0x8

    :try_start_7d
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v3, :cond_89

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    goto :goto_89

    :catch_87
    move-exception p1

    goto :goto_90

    :cond_89
    :goto_89
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->reset(J)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8f} :catch_87
    .catchall {:try_start_7d .. :try_end_8f} :catchall_79

    goto :goto_9d

    :goto_90
    :try_start_90
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "reset Usb Gadget failed"

    invoke-static {v2, v3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    :goto_9d
    monitor-exit v0

    goto/16 :goto_16e

    :goto_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_79

    throw p0

    :pswitch_a2  #0x12
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_a7

    goto :goto_a8

    :cond_a7
    move v2, v1

    :goto_a8
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;->getInstance(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v3

    sput-object v3, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-nez v3, :cond_d3

    if-nez v2, :cond_d3

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V
    :try_end_c4
    .catch Ljava/util/NoSuchElementException; {:try_start_b1 .. :try_end_c4} :catch_c7
    .catchall {:try_start_b1 .. :try_end_c4} :catchall_c5

    goto :goto_d3

    :catchall_c5
    move-exception p0

    goto :goto_d6

    :catch_c7
    move-exception p0

    :try_start_c8
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p1, "UsbDeviceManager"

    const-string/jumbo v1, "Usb gadget hal not found"

    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d3
    :goto_d3
    monitor-exit v0

    goto/16 :goto_16e

    :goto_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_c5

    throw p0

    :pswitch_d8  #0x11
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_16e

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v4, 0x2

    cmp-long p1, v2, v4

    if-nez p1, :cond_ee

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    return-void

    :cond_ee
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_f4  #0x10
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "processing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v3, :cond_146

    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "updating mCurrentFunctions"

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mCurrentFunctions:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "applied:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_144

    move v1, v2

    :cond_144
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    :cond_146
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    :pswitch_14a  #0xf
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Set functions timed out! no reply from usb hal ,operationId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_16e

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V

    :cond_16e
    :goto_16e
    return-void

    :pswitch_16f  #0xe
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V

    return-void

    nop

    :pswitch_data_17c
    .packed-switch 0xe
        :pswitch_16f  #0000000e
        :pswitch_14a  #0000000f
        :pswitch_f4  #00000010
        :pswitch_d8  #00000011
        :pswitch_a2  #00000012
        :pswitch_61  #00000013
        :pswitch_7  #00000014
        :pswitch_7  #00000015
        :pswitch_2e  #00000016
        :pswitch_b  #00000017
    .end packed-switch
.end method

.method public final handlerInitDone(I)V
    .registers 4

    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getCurrentUsbFunctions(J)V

    return-void
.end method

.method public final resetCb(I)V
    .registers 2

    if-eqz p1, :cond_d

    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p0, "UsbDeviceManager"

    const-string/jumbo p1, "resetCb fail"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public final setCurrentUsbFunctionsCb(IJJIZ)V
    .registers 10

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    if-ne v0, p6, :cond_46

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_46

    cmp-long p2, p4, p2

    if-eqz p2, :cond_11

    goto :goto_46

    :cond_11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "notifyCurrentFunction request:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " status:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "UsbDeviceManager"

    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_39

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    return-void

    :cond_39
    if-nez p7, :cond_46

    const-string/jumbo p1, "Setting default fuctions"

    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_46
    :goto_46
    return-void
.end method

.method public final setEnabledFunctions(IJZ)V
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v5, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setEnabledFunctionsi functions="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", forceRestart="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", operationId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/16 v6, 0xc

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_47

    const-wide/16 v5, 0x400

    and-long/2addr v5, v2

    cmp-long v5, v5, v7

    if-eqz v5, :cond_47

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, "Could not set unsupported function for the GadgetHal"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    iget-wide v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_53

    iget-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-eqz v5, :cond_53

    if-eqz v4, :cond_128

    :cond_53
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Setting USB config to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    iput-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    cmp-long v5, v2, v7

    const/4 v6, 0x1

    if-nez v5, :cond_7a

    move v15, v6

    goto :goto_7b

    :cond_7a
    move v15, v4

    :goto_7b
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v11

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "setUsbConfig("

    const-string v5, ") request:"

    invoke-static {v3, v11, v12, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_ac
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    if-nez v9, :cond_bd

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "setUsbConfig mUsbGadgetHal is null"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_ba
    .catchall {:try_start_ac .. :try_end_ba} :catchall_bb

    goto :goto_11b

    :catchall_bb
    move-exception v0

    goto :goto_129

    :cond_bd
    const-wide/16 v9, 0x1

    and-long/2addr v9, v11

    cmp-long v7, v9, v7

    if-eqz v7, :cond_d2

    :try_start_c4
    const-class v7, Landroid/debug/AdbManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/debug/AdbManagerInternal;

    invoke-virtual {v7, v4}, Landroid/debug/AdbManagerInternal;->startAdbdForTransport(B)V

    goto :goto_dd

    :catch_d0
    move-exception v0

    goto :goto_10f

    :cond_d2
    const-class v7, Landroid/debug/AdbManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/debug/AdbManagerInternal;

    invoke-virtual {v7, v4}, Landroid/debug/AdbManagerInternal;->stopAdbdForTransport(B)V

    :goto_dd
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    iget v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    int-to-long v13, v0

    invoke-interface/range {v9 .. v15}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->setCurrentUsbFunctions(IJJZ)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput v15, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_105

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput v15, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_105
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "timeout message queued"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_10e} :catch_d0
    .catchall {:try_start_c4 .. :try_end_10e} :catchall_bb

    goto :goto_11a

    :goto_10f
    :try_start_10f
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {v2, v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11a
    monitor-exit v5
    :try_end_11b
    .catchall {:try_start_10f .. :try_end_11b} :catchall_bb

    :goto_11b
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_128

    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-virtual {v1, v11, v12, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    :cond_128
    return-void

    :goto_129
    :try_start_129
    monitor-exit v5
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_bb

    throw v0
.end method
