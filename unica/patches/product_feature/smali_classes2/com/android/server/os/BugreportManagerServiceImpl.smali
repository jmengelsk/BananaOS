.class public Lcom/android/server/os/BugreportManagerServiceImpl;
.super Landroid/os/IDumpstate$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBugreportAllowlistedPackages:Landroid/util/ArraySet;

.field public final mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

.field public final mFinishedBugreports:Landroid/util/LocalLog;

.field public final mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mNumberFinishedBugreports:I

.field public mPreDumpedDataUid:Ljava/util/OptionalInt;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/os/BugreportManagerServiceImpl;->DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/IDumpstate$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object v0, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mMappingFile:Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;-><init>(Landroid/util/AtomicFile;)V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static callerToString(Landroid/util/Pair;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo p0, "N/A"

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reportError(Landroid/os/IDumpstateListener;I)V
    .registers 3

    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onError() transaction threw RemoteException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final cancelBugreport(ILjava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    const-string v0, "BugreportManagerService"

    const-string v1, "Cancelling bugreport for %s / %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    const-string/jumbo v1, "dumpstate"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v1

    if-nez v1, :cond_33

    const-string p0, "BugreportManagerService"

    const-string/jumbo p1, "cancelBugreport: Could not find native dumpstate service"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception p0

    goto :goto_45

    :cond_33
    :try_start_33
    invoke-interface {v1, p1, p2}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_31

    goto :goto_40

    :catch_37
    move-exception p1

    :try_start_38
    const-string p2, "BugreportManagerService"

    const-string/jumbo v1, "RemoteException in cancelBugreport"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_31

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p3, "BugreportManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "Allow-listed packages: %s\n"

    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_19
    const-string/jumbo p3, "Pre-dumped data UID: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {p3}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_31

    const-string/jumbo p3, "none"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a

    :catchall_2e
    move-exception p0

    goto/16 :goto_dd

    :cond_31
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {p3}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    :goto_3a
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    if-nez p3, :cond_45

    const-string/jumbo p3, "Not taking a bug report"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_48

    :cond_45
    invoke-static {p3, p2}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->-$$Nest$mdump(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;Ljava/io/PrintWriter;)V

    :goto_48
    iget p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    const/4 v0, 0x1

    if-nez p3, :cond_54

    const-string/jumbo p3, "No finished bugreports"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c

    :cond_54
    const-string v1, "%d finished bugreport%s. Last %d:\n"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    if-le v2, v0, :cond_62

    const-string/jumbo v3, "s"

    goto :goto_64

    :cond_62
    const-string v3, ""

    :goto_64
    const/16 v4, 0x14

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v3, v2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    const-string v1, "  "

    invoke-virtual {p3, v1, p2}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_7c
    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_19 .. :try_end_7d} :catchall_2e

    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object p3, p1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_82
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-boolean p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    if-nez p1, :cond_90

    const-string p1, "Has not read bugreport mapping"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    :catchall_8e
    move-exception p0

    goto :goto_db

    :cond_90
    :goto_90
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const-string v1, "%d pending file%s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-le p1, v0, :cond_a4

    const-string/jumbo v0, "s"

    goto :goto_a6

    :cond_a4
    const-string v0, ""

    :goto_a6
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-lez p1, :cond_d6

    const/4 v0, 0x0

    :goto_b0
    if-ge v0, p1, :cond_d9

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v2, v2, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    const-string v3, "  %s: %s\n"

    invoke-static {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    :cond_d6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_d9
    monitor-exit p3

    return-void

    :goto_db
    monitor-exit p3
    :try_end_dc
    .catchall {:try_start_82 .. :try_end_dc} :catchall_8e

    throw p0

    :goto_dd
    :try_start_dd
    monitor-exit p1
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_2e

    throw p0
.end method

.method public final enforcePermission(ILjava/lang/String;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    const-string/jumbo v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_30

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_35

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_35
    :goto_35
    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_43

    return-void

    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_5b

    :try_start_49
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_56

    const/4 p1, 0x1

    if-ne p0, p1, :cond_5b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_56
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not hold the DUMP permission or is not bugreport-whitelisted or does not have an allowed role "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_71

    const-string/jumbo p1, "and does not have carrier privileges "

    goto :goto_73

    :cond_71
    const-string p1, ""

    :goto_73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "to request a bugreport"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final preDumpUiData(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->preDumpUiDataLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final preDumpUiDataLocked(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    const-string/jumbo v0, "dumpstate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v1, "BugreportManagerService"

    if-eqz v0, :cond_20

    const-string p0, "\'dumpstate\' is already running. Cannot pre-dump data while another operation is currently in progress."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string/jumbo p0, "Unable to get bugreport service"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    :try_start_2d
    invoke-interface {v0, p1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_43
    .catchall {:try_start_2d .. :try_end_30} :catchall_3e

    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    return-void

    :catchall_3e
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    throw p1

    :catch_43
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    return-void
.end method

.method public final retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v2, p8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/4 v0, 0x0

    invoke-virtual {v1, v10, v9, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    const-string v3, "BugreportManagerService"

    const-string/jumbo v4, "Retrieving bugreport for %s / %d"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1e
    iget-object v11, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v12, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v14, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v14, v3, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v15, p3

    move-object/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->ensureCallerPreviouslyGeneratedFile(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_36} :catch_be

    iget-object v11, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_39
    const-string/jumbo v3, "dumpstate"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v3

    if-eqz v3, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    move v3, v0

    :goto_49
    if-eqz v3, :cond_5a

    const-string v0, "BugreportManagerService"

    const-string v1, "\'dumpstate\' is already running. Cannot retrieve a bugreport while another one is currently in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    monitor-exit v11

    return-void

    :catchall_58
    move-exception v0

    goto :goto_bc

    :cond_5a
    invoke-virtual {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v3

    if-nez v3, :cond_6e

    const-string v0, "BugreportManagerService"

    const-string/jumbo v1, "Unable to get bugreport service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    monitor-exit v11

    return-void

    :cond_6e
    iget-object v4, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    invoke-virtual {v4, v9, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->canSkipConsentScreen(Ljava/lang/String;Z)Z

    move-result v12

    new-instance v8, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    xor-int/lit8 v7, v12, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V

    move-object v8, v0

    move-object v0, v3

    iget-object v2, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v2, v2, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    move-object/from16 v5, p5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    iget-object v2, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    if-eqz v2, :cond_a4

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "BugreportManagerService"

    const-string/jumbo v4, "setCurrentDumpstateListenerLocked(%s): called when mCurrentDumpstateListener is already set (%s)"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a4
    iput-object v8, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    :try_end_a6
    .catchall {:try_start_39 .. :try_end_a6} :catchall_58

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v2, v9

    move v1, v10

    move v7, v12

    :try_start_ad
    invoke-interface/range {v0 .. v8}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_58

    goto :goto_ba

    :catch_b1
    move-exception v0

    :try_start_b2
    const-string v1, "BugreportManagerService"

    const-string/jumbo v2, "RemoteException in retrieveBugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ba
    monitor-exit v11

    return-void

    :goto_bc
    monitor-exit v11
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_58

    throw v0

    :catch_be
    move-exception v0

    const-string v1, "BugreportManagerService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void
.end method

.method public final startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .registers 9

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "ctl.start"

    const-string/jumbo v0, "bugreportd"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    move v2, p0

    move v3, v2

    :goto_14
    const-string/jumbo v4, "ms)"

    const-string v5, "BugreportManagerService"

    if-nez v2, :cond_55

    const-string/jumbo v0, "dumpstate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string p0, "Got bugreport service handle."

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_2e
    int-to-long v6, v1

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Waiting to get dumpstate service handle ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v3, v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v4, v3

    const-wide/16 v6, 0x7530

    cmp-long v2, v4, v6

    if-lez v2, :cond_53

    const/4 v2, 0x1

    goto :goto_14

    :cond_53
    move v2, p0

    goto :goto_14

    :cond_55
    :goto_55
    if-eqz v2, :cond_5d

    const-string/jumbo p0, "Timed out waiting to get dumpstate service handle ("

    invoke-static {v3, p0, v4, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    return-object v0
.end method

.method public final startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    .registers 19

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p5, :cond_40

    if-eq p5, v1, :cond_40

    if-eq p5, v0, :cond_40

    const/4 v2, 0x3

    if-eq p5, v2, :cond_40

    if-eq p5, p1, :cond_40

    const/4 v2, 0x5

    if-eq p5, v2, :cond_40

    const/4 v2, 0x7

    if-eq p5, v2, :cond_40

    const/16 v2, 0x16

    if-ne p5, v2, :cond_22

    goto :goto_40

    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unknown bugreport mode: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BugreportManagerService"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p5, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    and-int/lit8 v2, p6, -0x8

    if-nez v2, :cond_115

    move v3, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    if-ne p5, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v2

    :goto_4e
    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_5d
    iget-object v6, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object v6, v6, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-nez v6, :cond_84

    iget-object v6, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object v6, v6, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/UserManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v6

    goto :goto_8a

    :catchall_80
    move-exception v0

    move-object p0, v0

    goto/16 :goto_111

    :cond_84
    iget p1, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6
    :try_end_8a
    .catchall {:try_start_5d .. :try_end_8a} :catchall_80

    :goto_8a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v6, :cond_e6

    if-ne p5, v0, :cond_cd

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v3

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_cd

    if-eq p1, v3, :cond_e6

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    goto :goto_e6

    :cond_ae
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "User "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not affiliated to the device owner."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cd
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Calling user %s is not an admin user. Only admin users and their profiles are allowed to take bugreport."

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BugreportManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e6
    :goto_e6
    const-string p1, "BugreportManagerService"

    const-string/jumbo v0, "Starting bugreport for %s / %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/util/MutableBoolean;

    invoke-direct {p1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    :try_start_108
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl;->startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;Z)V

    monitor-exit p1

    return-void

    :catchall_10d
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_110
    .catchall {:try_start_108 .. :try_end_110} :catchall_10d

    throw p0

    :goto_111
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_115
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unknown bugreport flags: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BugreportManagerService"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;Z)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v2, p7

    const-string/jumbo v0, "dumpstate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_17

    move v0, v4

    goto :goto_18

    :cond_17
    move v0, v3

    :goto_18
    const-string v10, "BugreportManagerService"

    if-eqz v0, :cond_26

    const-string v0, "\'dumpstate\' is already running. Cannot start a new bugreport while another operation is currently in progress."

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void

    :cond_26
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_4f

    iget-object v0, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    and-int/lit8 v0, p6, -0x2

    const-string v5, "Ignoring BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA. No pre-dumped data is available."

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v11, p1

    :goto_3b
    move v12, v0

    goto :goto_53

    :cond_3d
    iget-object v0, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    move/from16 v11, p1

    if-eq v0, v11, :cond_51

    and-int/lit8 v0, p6, -0x2

    const-string v5, "Ignoring BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA. Data was pre-dumped by a different UID."

    invoke-static {v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_4f
    move/from16 v11, p1

    :cond_51
    move/from16 v12, p6

    :goto_53
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_59

    move v5, v4

    goto :goto_5a

    :cond_59
    move v5, v3

    :goto_5a
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_60

    move v6, v4

    goto :goto_61

    :cond_60
    move v6, v3

    :goto_61
    invoke-virtual {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    if-nez v0, :cond_72

    const-string/jumbo v0, "Unable to get bugreport service"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    return-void

    :cond_72
    iget-object v7, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    xor-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v9, v8}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->canSkipConsentScreen(Ljava/lang/String;Z)Z

    move-result v13

    new-instance v7, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    move v8, v4

    new-instance v4, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v4, v14, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v5, :cond_8b

    if-nez v13, :cond_8b

    move v3, v8

    :cond_8b
    move v8, v5

    move v15, v3

    move-object v3, v0

    move-object v0, v7

    move v7, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V

    move-object v7, v0

    move-object v14, v1

    move-object v0, v3

    iget-object v1, v14, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    if-eqz v1, :cond_a4

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "setCurrentDumpstateListenerLocked(%s): called when mCurrentDumpstateListener is already set (%s)"

    invoke-static {v10, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a4
    iput-object v7, v14, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p8

    move-object v2, v9

    move v1, v11

    move v6, v12

    move v9, v13

    :try_start_b2
    invoke-interface/range {v0 .. v9}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b5} :catch_b6

    return-void

    :catch_b6
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport(ILjava/lang/String;)V

    return-void
.end method

.method public final stopDumpstateBinderServiceLocked()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "ctl.stop"

    const-string/jumbo v0, "bugreportd"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
