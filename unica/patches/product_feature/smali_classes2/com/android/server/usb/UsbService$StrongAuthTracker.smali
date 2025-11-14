.class public final Lcom/android/server/usb/UsbService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLockdownModeStatus:Z

.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    move p1, v1

    goto :goto_e

    :cond_d
    move p1, v0

    :goto_e
    iget-boolean v2, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->mLockdownModeStatus:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_39

    if-ne v2, p1, :cond_14

    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->mLockdownModeStatus:Z

    iget-object v2, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v2, v2, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2

    array-length v3, v2

    :goto_1f
    if-ge v0, v3, :cond_3c

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/android/server/usb/UsbService$StrongAuthTracker;->this$0:Lcom/android/server/usb/UsbService;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v6

    xor-int/lit8 v7, p1, 0x1

    new-instance v9, Landroid/hardware/usb/IUsbOperationInternal$Default;

    invoke-direct {v9}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v8, 0x2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usb/UsbService;->enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;IZ)Z
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_39

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catchall_39
    move-exception v0

    move-object p1, v0

    goto :goto_3e

    :cond_3c
    monitor-exit p0

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_39

    throw p1
.end method
