.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    const-string/jumbo v0, "SemDeviceInfoManagerService"

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/HandlerThread;)V
    .registers 5

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    new-instance p1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EventProcessHandler:handleMessage() msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_97

    const/4 v3, 0x3

    if-eq v1, v3, :cond_77

    const/4 v2, 0x4

    if-eq v1, v2, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "msg.what has invalid value. msg.what = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3d
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "monitor_package_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "PackageMonitor is still in use! DO NOT UNREGISTER!"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_6c
    move-exception p0

    goto :goto_75

    :cond_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_6c

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void

    :goto_75
    :try_start_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_6c

    throw p0

    :cond_77
    :try_start_77
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception p0

    sget-object p1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error on registering package monitor! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_97
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :cond_a9
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
