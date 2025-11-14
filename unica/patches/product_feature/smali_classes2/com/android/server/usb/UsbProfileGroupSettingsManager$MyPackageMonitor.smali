.class public final Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    iget-object v1, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    iget-object v0, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_76

    :cond_15
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    const-string/jumbo v1, "handlePackageUpdate could not find package "

    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_26
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/16 v4, 0x81

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_62
    .catchall {:try_start_26 .. :try_end_32} :catchall_38

    :try_start_32
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_3a

    monitor-exit v2

    return-void

    :catchall_38
    move-exception p0

    goto :goto_77

    :cond_3a
    const/4 p2, 0x0

    move v1, p2

    :goto_3c
    array-length v3, p1

    if-ge p2, v3, :cond_5b

    aget-object v3, p1, p2

    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4c

    move v1, v4

    :cond_4c
    aget-object v3, p1, p2

    const-string/jumbo v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {p0, v0, v3, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    move v1, v4

    :cond_58
    add-int/lit8 p2, p2, 0x1

    goto :goto_3c

    :cond_5b
    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    :cond_60
    monitor-exit v2

    return-void

    :catch_62
    move-exception p0

    const-string/jumbo p1, "UsbProfileGroupSettingsManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    :goto_76
    return-void

    :goto_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_32 .. :try_end_78} :catchall_38

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    iget-object v1, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    iget-object v0, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
