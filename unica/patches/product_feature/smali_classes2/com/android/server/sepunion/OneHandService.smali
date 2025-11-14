.class public Lcom/android/server/sepunion/OneHandService;
.super Lcom/samsung/android/sepunion/IOneHandService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/OneHandService$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

.field public final mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;


# direct methods
.method public static -$$Nest$mbindService(Lcom/android/server/sepunion/OneHandService;)V
    .locals 4

    const-string/jumbo v0, "OneHandService"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.sidegesturepad"

    const-string/jumbo v3, "com.samsung.android.sidegesturepad.SGPService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exception on bindService() e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v1, "bindService() ret="

    invoke-static {v1, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static -$$Nest$mstartGestureService(Lcom/android/server/sepunion/OneHandService;)V
    .locals 4

    const-string/jumbo v0, "com.samsung.android.sidegesturepad"

    const-string/jumbo v1, "OneHandService"

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sidegesturepad.SGPService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.action.SIDEGESTUREPAD_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x1000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "option"

    const-string/jumbo v3, "start"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "extra"

    const-string/jumbo v3, "system"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "exception on startGestureService() e="

    invoke-static {p0, v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo p0, "startGestureService()"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/sepunion/OneHandService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IOneHandService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    new-instance v0, Lcom/android/server/sepunion/OneHandService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/OneHandService$1;-><init>(Lcom/android/server/sepunion/OneHandService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Lcom/android/server/sepunion/OneHandService$1;

    new-instance v0, Lcom/android/server/sepunion/OneHandService$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final clickTile(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p0, "clickTile() componentName="

    const-string/jumbo v0, "OneHandService"

    invoke-static {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "\n##### OneHandService  #####\n##### (dumpsys sepunion onehand) #####\n"

    const-string p3, "    Service alive="

    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    const-string/jumbo v1, "com.samsung.android.sidegesturepad"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p1, "OneHandService"

    const-string/jumbo v1, "onBootPhase()"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService;->mBootCompleteReceiver:Lcom/android/server/sepunion/OneHandService$1;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    return-void
.end method

.method public final registerListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerListener() name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cb="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mMonitor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "OneHandService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerWatcher() binder="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watcher="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    invoke-static {p0}, Lcom/android/server/sepunion/OneHandService;->-$$Nest$mbindService(Lcom/android/server/sepunion/OneHandService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "exception on registerWatcher() e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final unRegisterListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unRegisterListener() name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cb="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "OneHandService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService;->mMonitor:Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterWatcher() binder="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watcher="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    iget-object v1, p1, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo p1, "unbindService()"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "exception on unregisterWatcher() e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final writeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo p0, "writeSetting() type="

    const-string v0, ", key="

    const-string v1, ", value="

    invoke-static {p0, p1, v0, p2, v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "OneHandService"

    invoke-static {p0, p3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
