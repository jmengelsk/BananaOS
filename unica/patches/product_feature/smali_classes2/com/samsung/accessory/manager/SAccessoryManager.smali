.class public final Lcom/samsung/accessory/manager/SAccessoryManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;


# instance fields
.field public authState:Z

.field public isUsbReady:Z

.field public final mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

.field public final mAuthenticationRequsetReceiver:Lcom/samsung/accessory/manager/SAccessoryManager$4;

.field public final mBatteryEventReceiver:Lcom/samsung/accessory/manager/SAccessoryManager$4;

.field public final mContext:Landroid/content/Context;

.field public final mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

.field public final mIsFactory:Z

.field public final mLocalAuthenticator:Ljava/util/ArrayList;

.field public final mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

.field public final mSessions:Ljava/util/HashMap;

.field public final mUEventObserver:Lcom/samsung/accessory/manager/SAccessoryManager$3;

.field public mUsbpdIds:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final modelName:Ljava/lang/String;

.field public usbState:Z

.field public wirelesschargerState:Z


# direct methods
.method public static -$$Nest$mwirelessChargerConnected(Lcom/samsung/accessory/manager/SAccessoryManager;I)V
    .registers 9

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_8
    :goto_8
    if-ge v3, v1, :cond_33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v5, v4, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    if-eqz v5, :cond_8

    const-string/jumbo v5, "Wireless Charger Connected = "

    const-string/jumbo v6, "SAccessoryManager_SAccessoryManager"

    invoke-static {p1, v5, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v4, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2a

    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(Z)V

    goto :goto_8

    :cond_2a
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    invoke-virtual {v4, v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->onWirelessChargerConnected(Z)V

    goto :goto_8

    :cond_33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 14

    const-string/jumbo v0, "com.sec.feature.nfc_authentication"

    const-string/jumbo v1, "com.sec.feature.usb_authentication"

    const-string/jumbo v2, "feature check nfc: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->wirelesschargerState:Z

    iput-boolean v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    const-string/jumbo v5, "Samsung Mobile"

    iput-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    new-instance v5, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-direct {v5, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    new-instance v6, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-direct {v6, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    new-instance v6, Lcom/samsung/accessory/manager/SAccessoryManager$3;

    invoke-direct {v6, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$3;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v6, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUEventObserver:Lcom/samsung/accessory/manager/SAccessoryManager$3;

    new-instance v7, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    iput-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthenticationRequsetReceiver:Lcom/samsung/accessory/manager/SAccessoryManager$4;

    new-instance v7, Lcom/samsung/accessory/manager/SAccessoryManager$4;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/samsung/accessory/manager/SAccessoryManager$4;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    iput-object v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mBatteryEventReceiver:Lcom/samsung/accessory/manager/SAccessoryManager$4;

    const-string/jumbo v8, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo v9, "SAccessoryManager starting up"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v9, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v9, :cond_84

    iput-object v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    :cond_84
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {p1, v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :try_start_96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_109

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b3

    new-instance v9, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p1, v10, v5}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v6, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_b3
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c2

    const-string/jumbo v6, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    :cond_c2
    new-instance v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v6, p1, p2, v9, v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    const-string/jumbo p2, "com.sec.feature.wirelesscharger_authentication"

    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e3

    new-instance p2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p2, p1, v3, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$1;)V

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", usb: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_96 .. :try_end_102} :catchall_103

    goto :goto_109

    :catchall_103
    const-string/jumbo p1, "package manager error for check feature"

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    :goto_109
    new-instance p1, Lcom/samsung/accessory/manager/DetachCheck;

    iget-object p2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/accessory/manager/DetachCheck;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    return-void
.end method


# virtual methods
.method public final attachUsbTypeC(I)V
    .registers 10

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_8
    :goto_8
    if-ge v3, v1, :cond_51

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v5, v4, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "USB Type C attached, attached = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SAccessoryManager_SAccessoryManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "USB State "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-static {v6, v5, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    check-cast v4, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_49

    iget-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    if-nez v5, :cond_8

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v4, v5}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(Z)V

    goto :goto_8

    :cond_49
    if-nez p1, :cond_8

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->usbState:Z

    invoke-virtual {v4, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->onUsbAttached(Z)V

    goto :goto_8

    :cond_51
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission Denial: can\'t dump SAccessoryManager from from pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_33
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v1, :cond_48

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    invoke-virtual {v3, p2}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->dump(Ljava/io/PrintWriter;)V

    goto :goto_3a

    :cond_48
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_4b
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_55

    :catchall_65
    move-exception p0

    goto :goto_69

    :cond_67
    monitor-exit v0

    return-void

    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_4b .. :try_end_6a} :catchall_65

    throw p0
.end method

.method public final handleAuthStartRequest(Landroid/os/Message;Z)V
    .registers 11

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_7
    const-string/jumbo v2, "package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "connectivity_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1d

    :goto_1b
    move v4, v3

    goto :goto_2b

    :cond_1d
    const/4 v5, 0x2

    if-ne v0, v5, :cond_23

    const/16 v4, 0x8

    goto :goto_2b

    :cond_23
    const/4 v5, 0x3

    if-ne v0, v5, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2b

    goto :goto_1b

    :cond_2b
    :goto_2b
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_68

    :try_start_2e
    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v0, :cond_39

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :catchall_4e
    move-exception p0

    goto :goto_9d

    :cond_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_4e

    if-ge v6, v4, :cond_7c

    :try_start_53
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v4, v3, v2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p2, :cond_6a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    iput-object p1, v4, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    goto :goto_6a

    :catchall_68
    move-exception p0

    goto :goto_9f

    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    iput-object p1, v4, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_7c
    new-instance p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    if-eqz p2, :cond_9b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    if-eqz p1, :cond_92

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_9b

    :cond_92
    const-string/jumbo p0, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo p1, "handleAuthStartRequest, callback is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_53 .. :try_end_9c} :catchall_68

    return-void

    :goto_9d
    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_4e

    :try_start_9e
    throw p0

    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_68

    throw p0
.end method
