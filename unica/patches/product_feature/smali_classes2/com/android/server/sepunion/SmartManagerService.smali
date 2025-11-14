.class public final Lcom/android/server/sepunion/SmartManagerService;
.super Lcom/samsung/android/sepunion/ISmartManagerService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final ARGS:[Ljava/lang/String;

.field public static final IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

.field public static final PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

.field public static final PAYMENT_APP_URI:Landroid/net/Uri;

.field public static final PAYMENT_SWITCH_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SM_PROVIDER_URI:Landroid/net/Uri;


# instance fields
.field public final mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

.field public final mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mImportantAppSet:Ljava/util/HashSet;

.field public final mImportantComponentList:Ljava/util/ArrayList;

.field public final mLocationChangeReceiver:Lcom/android/server/sepunion/SmartManagerService$4;

.field public final mPkgChangedIntentReceiver:Lcom/android/server/sepunion/SmartManagerService$2;

.field public final mPrivacyChangedListener:Lcom/android/server/sepunion/SmartManagerService$5;

.field public volatile mProtectedAppLoaded:Z

.field public final mProtectedAppSet:Ljava/util/HashSet;

.field public final mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

.field public final mUserActionReceiver:Lcom/android/server/sepunion/SmartManagerService$1;


# direct methods
.method public static -$$Nest$monPermissionChanged(Lcom/android/server/sepunion/SmartManagerService;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "permission_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/sepunion/SmartManagerService;

    const-string/jumbo v0, "payment_safety_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm/ProtectedApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.payment"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.payment/importantComponentList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v0, "package_name"

    const-string/jumbo v1, "uid"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->PROJECTION:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->ARGS:[Ljava/lang/String;

    const-string/jumbo v0, "content://com.samsung.android.sm.dcapi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SmartManagerService;->SM_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/sepunion/ISmartManagerService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mCheckedAppMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mForegroundActivitiesPidMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppLoaded:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$1;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mUserActionReceiver:Lcom/android/server/sepunion/SmartManagerService$1;

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$2;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mPkgChangedIntentReceiver:Lcom/android/server/sepunion/SmartManagerService$2;

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$3;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$4;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mLocationChangeReceiver:Lcom/android/server/sepunion/SmartManagerService$4;

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$5;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mPrivacyChangedListener:Lcom/android/server/sepunion/SmartManagerService$5;

    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "SmartManagerService"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;-><init>(Lcom/android/server/sepunion/SmartManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    return-void
.end method

.method public static getPkgUid(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ":"

    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createContextAsUser()Landroid/content/Context;
    .registers 4

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    :try_start_6
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    const/16 v1, 0x4d

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception v0

    const-string/jumbo v1, "SmartManagerService"

    const-string/jumbo v2, "createContextAsUser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "##### SmartManagerService  #####"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " Current Payment App:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_d
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    new-instance p3, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isProtectedApp(Ljava/lang/String;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppLoaded:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadProtectedAppSet()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_a
    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string/jumbo p0, "SmartManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not target"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_2c
    move-exception p0

    goto :goto_31

    :cond_2e
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_2c

    throw p0
.end method

.method public final loadImportantAppComponentList()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/sepunion/SmartManagerService;->IMPORT_COMPONENT_LIST_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_55

    if-eqz v1, :cond_4f

    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_24
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/ComponentName;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_44

    if-nez v0, :cond_24

    goto :goto_4f

    :catchall_44
    move-exception v0

    move-object p0, v0

    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v0

    :try_start_4b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw p0

    :cond_4f
    :goto_4f
    if-eqz v1, :cond_60

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "SmartManagerService"

    const-string/jumbo v1, "getImportantComponentList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_60
    return-void
.end method

.method public final loadProtectedAppSet()V
    .registers 12

    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppLoaded:Z

    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "payment_safety_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo p0, "SmartManagerService"

    const-string/jumbo v0, "Payment switch is off"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9b

    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/server/sepunion/SmartManagerService;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v8, "mode=?"

    sget-object v9, Lcom/android/server/sepunion/SmartManagerService;->ARGS:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_82
    .catchall {:try_start_2a .. :try_end_40} :catchall_26

    if-eqz v2, :cond_73

    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_73

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_73

    :goto_4e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v3}, Lcom/android/server/sepunion/SmartManagerService;->getPkgUid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SmartManagerService"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/sepunion/SmartManagerService;->mProtectedAppSet:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :catchall_70
    move-exception v0

    move-object p0, v0

    goto :goto_85

    :cond_73
    const-string/jumbo p0, "SmartManagerService"

    const-string/jumbo v0, "Protected App is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_42 .. :try_end_7c} :catchall_70

    :cond_7c
    if-eqz v2, :cond_99

    :try_start_7e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82
    .catchall {:try_start_7e .. :try_end_81} :catchall_26

    goto :goto_99

    :catch_82
    move-exception v0

    move-object p0, v0

    goto :goto_90

    :goto_85
    if-eqz v2, :cond_8f

    :try_start_87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8f
    :goto_8f
    throw p0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_82
    .catchall {:try_start_8c .. :try_end_90} :catchall_26

    :goto_90
    :try_start_90
    const-string/jumbo v0, "SmartManagerService"

    const-string/jumbo v2, "SmartManager app doesn\'t support payment app list, please check"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_99
    :goto_99
    monitor-exit v1

    return-void

    :goto_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_26

    throw p0
.end method

.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_17

    const-string/jumbo p1, "SmartManagerService"

    const-string/jumbo v0, "onBootPhase"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    new-instance v0, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SmartManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SmartManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onDestroy()V
    .registers 1

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStartUser(I)V
    .registers 2

    return-void
.end method

.method public final onStopUser(I)V
    .registers 2

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public final onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final registerWatcherForImportantComponentList()V
    .registers 4

    const-string/jumbo v0, "SmartManagerService"

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string p0, "IMPORTANT_COMPONENT_LIST is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_21
    move-exception p0

    goto :goto_2b

    :cond_23
    iget-object v2, p0, Lcom/android/server/sepunion/SmartManagerService;->mUsageStatusWatcher:Lcom/android/server/sepunion/SmartManagerService$3;

    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_21

    return-void

    :goto_2b
    const-string/jumbo v1, "registerWatcherForImportantComponents cause exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
