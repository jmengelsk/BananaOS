.class public final Lcom/android/server/usb/SemUsbBackend;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mIsUnlocked:Z

.field public mPort:Landroid/hardware/usb/UsbPort;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/usb/SemUsbBackend;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static isFunctionEnabled(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "sys.usb.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_e

    goto :goto_2c

    :cond_e
    const/16 v2, 0x2c

    if-lez v1, :cond_1b

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1b

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_2e

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_2e

    :goto_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getUsbDataMode()I
    .registers 3

    iget-boolean p0, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "SemUsbBackend"

    if-nez p0, :cond_f

    const-string/jumbo p0, "USB connection getUsbDataMode : None"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    const-string/jumbo p0, "mtp"

    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string/jumbo p0, "USB connection getUsbDataMode : mtp"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_20
    const-string/jumbo p0, "ptp"

    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    const-string/jumbo p0, "USB connection getUsbDataMode : ptp"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_31
    const-string/jumbo p0, "midi"

    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string/jumbo p0, "USB connection getUsbDataMode : midi"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x6

    return p0

    :cond_42
    const-string/jumbo p0, "mass_storage"

    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    const-string/jumbo p0, "USB connection getUsbDataMode : mass_storage"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    return p0

    :cond_54
    const-string/jumbo p0, "sec_charging"

    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_64

    const-string/jumbo p0, "USB connection getUsbDataMode : sec_charging"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_64
    const-string/jumbo p0, "mtp,conn_gadget"

    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_76

    const-string/jumbo p0, "USB connection getUsbDataMode : mtp,conn_gadget"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    return p0

    :cond_76
    return v0
.end method

.method public final updateUsbPort()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_76

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateUsbPort() status = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SemUsbBackend"

    invoke-static {v6, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "updateUsbPort() mPort = "

    if-eqz v4, :cond_62

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateUsbPort() status.isConnected() = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_62

    aget-object v0, v1, v3

    iput-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_76
    return-void
.end method
