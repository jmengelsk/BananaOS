.class public final Lcom/android/server/usb/UsbSerialReader;
.super Landroid/hardware/usb/IUsbSerialReader$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevice:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/usb/IUsbSerialReader$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "package "

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_USB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    instance-of v3, v3, Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v3, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catch_0
    :try_start_2
    new-instance p0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " does to belong to the "

    invoke-static {v2, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    return-object p0
.end method
