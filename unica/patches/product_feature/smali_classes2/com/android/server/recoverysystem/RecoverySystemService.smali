.class public Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/widget/RebootEscrowListener;


# static fields
.field static final AB_UPDATE:Ljava/lang/String; = "ro.build.ab_update"

.field public static final FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

.field static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"

.field static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"

.field static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"

.field public static final sRequestLock:Ljava/lang/Object;


# instance fields
.field public final mCallerPendingRequest:Landroid/util/ArrayMap;

.field public final mCallerPreparedForReboot:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/FastImmutableArraySet;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object p1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;
    .registers 11

    const-string/jumbo v0, "RecoverySystemService"

    const-string/jumbo v1, "Read "

    const-string v2, "Allocating "

    const-string v3, " which is larger than the permitted limit2457600"

    const-string/jumbo v4, "apex_info.pb has size "

    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_12
    const-string/jumbo p0, "apex_info.pb"

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_43

    if-nez p0, :cond_20

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    const/4 p0, 0x0

    return-object p0

    :cond_20
    :try_start_20
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0x258000

    cmp-long v6, v6, v8

    if-gez v6, :cond_cd

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_46

    new-instance p0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {p0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/apex/CompressedApexInfo;

    iput-object v0, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_43

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    :catchall_43
    move-exception p0

    goto/16 :goto_e6

    :cond_46
    :try_start_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes of memory to store OTA Metadata"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_69
    .catchall {:try_start_46 .. :try_end_69} :catchall_43

    :try_start_69
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when expecting "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_c1

    if-ne v4, v2, :cond_bb

    :try_start_86
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-static {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object p0

    new-instance v0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    iget-object p0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/apex/CompressedApexInfo;

    iput-object p0, v0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_b7
    .catchall {:try_start_86 .. :try_end_b7} :catchall_43

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    :cond_bb
    :try_start_bb
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception v0

    if-eqz p0, :cond_cc

    :try_start_c4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_cc

    :catchall_c8
    move-exception p0

    :try_start_c9
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cc
    :goto_cc
    throw v0

    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e6
    .catchall {:try_start_c9 .. :try_end_e6} :catchall_43

    :goto_e6
    :try_start_e6
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ee
    throw p0
.end method

.method public static getSecretKeeper()Landroid/hardware/security/secretkeeper/ISecretkeeper;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/security/secretkeeper/ISecretkeeper;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1b

    return-object v0

    :cond_1b
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_28

    instance-of v3, v2, Landroid/hardware/security/secretkeeper/ISecretkeeper;

    if-eqz v3, :cond_28

    check-cast v2, Landroid/hardware/security/secretkeeper/ISecretkeeper;

    return-object v2

    :cond_28
    new-instance v2, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_2f} :catch_30

    return-object v2

    :catch_30
    const-string/jumbo v1, "RecoverySystemService"

    const-string v2, "Does not have permissions to get AIDL secretkeeper service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V
    .registers 7

    if-eqz p0, :cond_26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    :try_start_8
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not send intent for prepared reboot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "RecoverySystemService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method


# virtual methods
.method public final allocateSpaceForUpdate(Ljava/lang/String;)Z
    .registers 6

    const-string/jumbo v0, "RecoverySystemService"

    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->allocateSpaceForUpdate_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_a
    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_21

    const-string/jumbo p0, "apex_info.pb not present in OTA package. Assuming device doesn\'t support compressedAPEX, continueing without allocating space."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_1d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_17} :catch_1d
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1b
    move-exception p0

    goto :goto_41

    :catch_1d
    move-exception p0

    goto :goto_32

    :catch_1f
    move-exception p0

    goto :goto_3b

    :cond_21
    :try_start_21
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v3}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/apex/IApexService;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_1d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_21 .. :try_end_2e} :catch_1d
    .catchall {:try_start_21 .. :try_end_2e} :catchall_1b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_32
    :try_start_32
    const-string p1, "Failed to reserve space for compressed apex: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_1b

    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :goto_3b
    :try_start_3b
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_1b

    goto :goto_37

    :goto_3f
    const/4 p0, 0x0

    return p0

    :goto_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final checkAndWaitForUncryptService()Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_59

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "init.svc.uncrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "init.svc.setup-bcb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "init.svc.clear-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_42

    :cond_40
    const/4 p0, 0x1

    return p0

    :cond_42
    :goto_42
    :try_start_42
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_4c} :catch_4d

    goto :goto_56

    :catch_4d
    move-exception v2

    const-string/jumbo v3, "RecoverySystemService"

    const-string v4, "Interrupted:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_59
    return v0
.end method

.method public final clearBcb()Z
    .registers 4

    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final clearLskf(Ljava/lang/String;)Z
    .registers 7

    const-string v0, " hasn\'t prepared for resume on reboot"

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    const/4 v1, 0x0

    if-nez p1, :cond_12

    const-string/jumbo p0, "RecoverySystemService"

    const-string/jumbo p1, "Missing packageName when clearing lskf."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    monitor-enter p0

    :try_start_13
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo v2, "RecoverySystemService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_32

    monitor-exit p0

    move v0, v1

    goto :goto_52

    :catchall_32
    move-exception p1

    goto :goto_a1

    :cond_34
    :try_start_34
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_32

    if-eqz v0, :cond_50

    move v0, v4

    goto :goto_51

    :cond_50
    move v0, v3

    :goto_51
    monitor-exit p0

    :goto_52
    if-eqz v0, :cond_93

    if-eq v0, v4, :cond_66

    if-ne v0, v3, :cond_59

    return v4

    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Unsupported action type on clear "

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6a
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockSettingsInternal;

    if-nez p0, :cond_87

    const-string/jumbo p0, "RecoverySystemService"

    const-string p1, "Failed to get lock settings service, skipping clearRebootEscrow"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_6a .. :try_end_81} :catchall_85

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_85
    move-exception p0

    goto :goto_8f

    :cond_87
    :try_start_87
    invoke-virtual {p0}, Lcom/android/internal/widget/LockSettingsInternal;->clearRebootEscrow()Z

    move-result p0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_85

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_8f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_93
    const-string/jumbo p0, "RecoverySystemService"

    const-string/jumbo v0, "RoR clear called before preparation for caller "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :goto_a1
    :try_start_a1
    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_32

    throw p1
.end method

.method public final enforcePermissionForResumeOnReboot()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.REBOOT"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must have android.permission.RECOVERY or android.permission.REBOOT for resume on reboot."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final isLskfCaptured(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1a

    if-nez v0, :cond_18

    const-string/jumbo p0, "RecoverySystemService"

    const-string/jumbo v0, "Reboot requested before prepare completed for caller "

    invoke-static {v0, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final onPreparedForReboot(Z)V
    .registers 13

    if-nez p1, :cond_4

    goto/16 :goto_d8

    :cond_4
    monitor-enter p0

    :try_start_5
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    const-string/jumbo p1, "RecoverySystemService"

    const-string/jumbo v0, "onPreparedForReboot called when some clients have prepared."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto/16 :goto_dc

    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string/jumbo p1, "RecoverySystemService"

    const-string/jumbo v0, "onPreparedForReboot called but no client has requested."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 p1, 0x0

    move v0, p1

    :goto_2d
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    invoke-static {v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_50
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_17

    monitor-exit p0

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :try_start_60
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_d9

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object v3, v3, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    const-string/jumbo v4, "lskf_captured_timestamp"

    iget-object v5, v3, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v4, "lskf_captured_count"

    invoke-virtual {v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_86
    if-ge p1, v4, :cond_d8

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 p1, p1, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v6, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "_request_lskf_timestamp"

    invoke-static {v5, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v9, -0x1

    invoke-interface {v8, v7, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v7, v9

    if-eqz v9, :cond_b3

    cmp-long v9, v0, v7

    if-lez v9, :cond_b3

    sub-long v7, v0, v7

    long-to-int v7, v7

    div-int/lit16 v7, v7, 0x3e8

    goto :goto_b4

    :cond_b3
    const/4 v7, -0x1

    :goto_b4
    const-string/jumbo v8, "RecoverySystemService"

    const-string/jumbo v9, "Reporting lskf captured, lskf capture takes %d seconds for package %s"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x154

    invoke-static {v5, v6, v8, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    goto :goto_86

    :cond_d8
    :goto_d8
    return-void

    :catchall_d9
    move-exception p1

    :try_start_da
    monitor-exit p0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p1

    :goto_dc
    :try_start_dc
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_17

    throw p1
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_17
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;

    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2c

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public onSystemServicesReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_18

    const-string/jumbo p0, "RecoverySystemService"

    const-string v0, "Failed to get lock settings service, skipping set RebootEscrowListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    return-void
.end method

.method public final rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "RecoverySystemService rebootRecoveryWithCommand: "

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    const-string v2, "--wipe_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    sget-object v3, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_14
    invoke-virtual {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_28

    const-string/jumbo p0, "RecoverySystemService"

    const-string/jumbo p1, "rebootRecoveryWithCommand failed to setup BCB"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_25
    move-exception p0

    goto/16 :goto_9f

    :cond_28
    if-eqz v2, :cond_54

    const-string/jumbo v1, "deleteSecrets"

    const-string/jumbo v2, "RecoverySystemService"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_25

    :try_start_33
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->deleteAllKeys()V
    :try_end_36
    .catch Landroid/security/KeyStoreException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_25

    goto :goto_3d

    :catch_37
    move-exception v1

    :try_start_38
    const-string v4, "Failed to delete all keys from keystore."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_25

    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->getSecretKeeper()Landroid/hardware/security/secretkeeper/ISecretkeeper;

    move-result-object v1

    if-eqz v1, :cond_54

    const-string v4, "ISecretkeeper.deleteAll();"

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v1, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;

    invoke-virtual {v1}, Landroid/hardware/security/secretkeeper/ISecretkeeper$Stub$Proxy;->deleteAll()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4d} :catch_4e
    .catchall {:try_start_3d .. :try_end_4d} :catchall_25

    goto :goto_54

    :catch_4e
    move-exception v1

    :try_start_4f
    const-string v4, "Failed to delete all secrets from secretkeeper."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    :goto_54
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string/jumbo v1, "RecoverySystemService"

    const-string v2, "!@[RecoverySystemService] rebootRecoveryWithCommand: [reset tracking] write to recovery_cause"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_25

    :try_start_69
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_70} :catch_83
    .catchall {:try_start_69 .. :try_end_70} :catchall_25

    :try_start_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_85

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_25

    goto :goto_97

    :catch_83
    move-exception p1

    goto :goto_8f

    :catchall_85
    move-exception p1

    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8e
    throw p1
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_83
    .catchall {:try_start_8b .. :try_end_8f} :catchall_25

    :goto_8f
    :try_start_8f
    const-string/jumbo v0, "RecoverySystemService"

    const-string v1, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_97
    const-string/jumbo p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :goto_9f
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_8f .. :try_end_a0} :catchall_25

    throw p0
.end method

.method public final rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskfAssumeSlotSwitch_enforcePermission()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "RecoverySystemService"

    const/4 v4, 0x0

    if-nez v2, :cond_19

    const-string/jumbo v0, "Missing packageName when rebooting with lskf."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 v3, 0x7d0

    invoke-direct {v0, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    goto/16 :goto_101

    :cond_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 v3, 0xbb8

    invoke-direct {v0, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    goto/16 :goto_101

    :cond_28
    const-string v0, "Current boot slot should be 0 or 1, got "

    iget-object v5, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "ro.build.ab_update"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    const-string v0, "Device isn\'t a/b, skipping slot verification."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_45
    :try_start_45
    iget-object v5, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getBootControl()Landroid/hardware/boot/IBootControl;

    move-result-object v5
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4e} :catch_f4

    if-nez v5, :cond_56

    const-string v0, "Cannot get the boot control HAL, skipping slot verification."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_56
    :try_start_56
    invoke-interface {v5}, Landroid/hardware/boot/IBootControl;->getCurrentSlot()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_75

    if-ne v6, v7, :cond_60

    goto :goto_75

    :cond_60
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_72
    move-exception v0

    goto/16 :goto_ee

    :cond_75
    :goto_75
    invoke-interface {v5}, Landroid/hardware/boot/IBootControl;->getActiveBootSlot()I

    move-result v0
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_79} :catch_72

    if-eqz p3, :cond_80

    if-nez v6, :cond_7f

    move v6, v7

    goto :goto_80

    :cond_7f
    move v6, v4

    :cond_80
    :goto_80
    if-eq v0, v6, :cond_9d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "The next active boot slot doesn\'t match the expected value, expected "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    :cond_9d
    :goto_9d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_a1
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    const/16 v7, 0x1388

    if-nez v0, :cond_c3

    const-string v0, "Failed to get lock settings service, skipping armRebootEscrow"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/4 v3, 0x3

    invoke-direct {v0, v7, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V
    :try_end_bd
    .catchall {:try_start_a1 .. :try_end_bd} :catchall_c1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_101

    :catchall_c1
    move-exception v0

    goto :goto_ea

    :cond_c3
    :try_start_c3
    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->armRebootEscrow()I

    move-result v0
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_c1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_e4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failure to escrow key for reboot, providerErrorCode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {v3, v7, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    move-object v0, v3

    goto :goto_101

    :cond_e4
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {v0, v4, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    goto :goto_101

    :goto_ea
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_ee
    const-string v5, "Failed to query the active slots"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fa

    :catch_f4
    move-exception v0

    const-string v5, "Failed to get the boot control HAL "

    invoke-static {v5, v0, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_fa
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 v3, 0xfa0

    invoke-direct {v0, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    :goto_101
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3, v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_10b
    const-string/jumbo v3, "ota"

    const-string/jumbo v8, "server_based_ror_enabled"

    invoke-static {v3, v8, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_1fa

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-enter p0

    :try_start_119
    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    monitor-exit p0
    :try_end_120
    .catchall {:try_start_119 .. :try_end_120} :catchall_1f7

    iget-object v3, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object v5, v5, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    const-string/jumbo v6, "lskf_captured_timestamp"

    iget-object v9, v5, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v12, -0x1

    invoke-interface {v9, v6, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v6, v9, v12

    const/16 v14, 0x3e8

    const/4 v12, -0x1

    if-eqz v6, :cond_147

    cmp-long v6, v3, v9

    if-lez v6, :cond_147

    sub-long/2addr v3, v9

    long-to-int v3, v3

    div-int/2addr v3, v14

    goto :goto_148

    :cond_147
    move v3, v12

    :goto_148
    const-string/jumbo v4, "_request_lskf_count"

    invoke-static {v2, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, v4, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v4, "lskf_captured_count"

    iget-object v5, v5, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v4, "RecoverySystemService"

    const-string/jumbo v5, "Reporting reboot with lskf, package name %s, client count %d, request count %d, lskf captured count %d, duration since lskf captured %d seconds."

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v2, v6, v10, v12, v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget v4, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    iget v5, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    add-int v6, v4, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x155

    move/from16 v10, p3

    move v12, v3

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZII)V

    sget-object v2, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    iget v3, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a1

    goto :goto_1bc

    :cond_1a1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clearing resume on reboot states for all clients on arm escrow error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    const-string/jumbo v4, "RecoverySystemService"

    invoke-static {v2, v3, v4}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    monitor-enter p0

    :try_start_1b1
    iget-object v2, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_1bb
    .catchall {:try_start_1b1 .. :try_end_1bb} :catchall_1f4

    monitor-exit p0

    :goto_1bc
    iget v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    if-eqz v0, :cond_1c1

    return v0

    :cond_1c1
    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    iget-object v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mMetricsPrefsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1d5

    const-string/jumbo v0, "RecoverySystemService"

    const-string v2, "Failed to delete metrics prefs"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const/16 v2, 0x4e20

    const-string/jumbo v3, "reboot can be slow"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThreadFor(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object v0, v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return v14

    :catchall_1f4
    move-exception v0

    :try_start_1f5
    monitor-exit p0
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    throw v0

    :catchall_1f7
    move-exception v0

    :try_start_1f8
    monitor-exit p0
    :try_end_1f9
    .catchall {:try_start_1f8 .. :try_end_1f9} :catchall_1f7

    throw v0

    :catchall_1fa
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 14

    const-string v0, "Duplicate RoR preparation request for "

    const-string/jumbo v1, "RoR already has prepared for "

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    const/4 v2, 0x0

    if-nez p1, :cond_15

    const-string/jumbo p0, "RecoverySystemService"

    const-string/jumbo p1, "Missing packageName when requesting lskf."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    monitor-enter p0

    :try_start_16
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_3e

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "RecoverySystemService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catchall_33
    move-exception p1

    goto/16 :goto_101

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_16 .. :try_end_3b} :catchall_33

    monitor-exit p0

    move v0, v5

    goto :goto_61

    :cond_3e
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string/jumbo v3, "RecoverySystemService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_33

    if-eqz v1, :cond_5f

    move v0, v2

    goto :goto_60

    :cond_5f
    move v0, v4

    :goto_60
    monitor-exit p0

    :goto_61
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v1

    monitor-enter p0

    :try_start_68
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_fe

    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    iget-object v6, v6, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    const-string/jumbo v7, "_request_lskf_timestamp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v6, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v7, "_request_lskf_count"

    invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x153

    invoke-static {p1, v1, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    if-eqz v0, :cond_bc

    if-eq v0, v5, :cond_b8

    if-ne v0, v4, :cond_ab

    return v5

    :cond_ab
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Unsupported action type on new request "

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    invoke-static {p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    return v5

    :cond_bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_c0
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_dd

    const-string/jumbo p0, "RecoverySystemService"

    const-string v0, "Failed to get lock settings service, skipping prepareRebootEscrow"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_db

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_db
    move-exception p0

    goto :goto_fa

    :cond_dd
    :try_start_dd
    invoke-virtual {v0}, Lcom/android/internal/widget/LockSettingsInternal;->prepareRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_f6

    monitor-enter p0
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_db

    :try_start_e4
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_f3

    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_db

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    :try_start_f5
    throw v0
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_db

    :cond_f6
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_fa
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_fe
    move-exception p1

    :try_start_ff
    monitor-exit p0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw p1

    :goto_101
    :try_start_101
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_33

    throw p1
.end method

.method public final setupBcb(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setupOrClearBcb(Ljava/lang/String;Z)Z
    .registers 9

    const-string/jumbo v0, "uncrypt failed with status: "

    const-string/jumbo v1, "uncrypt "

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.RECOVERY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "RecoverySystemService"

    if-nez v2, :cond_20

    const-string/jumbo p0, "uncrypt service is unavailable."

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_20
    const-string/jumbo v2, "ctl.start"

    if-eqz p2, :cond_31

    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "setup-bcb"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_31
    iget-object v5, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "clear-bcb"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object p0

    if-nez p0, :cond_4d

    const-string p0, "Failed to connect to uncrypt socket"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4d
    if-eqz p2, :cond_57

    :try_start_4f
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    goto :goto_57

    :catchall_53
    move-exception p1

    goto :goto_a4

    :catch_55
    move-exception p1

    goto :goto_9b

    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v2, 0x64

    if-ne p1, v2, :cond_88

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_71

    const-string/jumbo p2, "setup"

    goto :goto_74

    :cond_71
    const-string/jumbo p2, "clear"

    :goto_74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " bcb successfully finished."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_83} :catch_55
    .catchall {:try_start_4f .. :try_end_83} :catchall_53

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 p0, 0x1

    return p0

    :cond_88
    :try_start_88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_97} :catch_55
    .catchall {:try_start_88 .. :try_end_97} :catchall_53

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v3

    :goto_9b
    :try_start_9b
    const-string p2, "IOException when communicating with uncrypt:"

    invoke-static {v4, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_53

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v3

    :goto_a4
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    throw p1
.end method

.method public final uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 10

    const-string v0, "IOException when writing \""

    sget-object v1, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.RECOVERY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_23

    const-string/jumbo p0, "RecoverySystemService"

    const-string/jumbo p1, "uncrypt service is unavailable."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :catchall_20
    move-exception p0

    goto/16 :goto_12a

    :cond_23
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_20

    :try_start_2d
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_fa
    .catchall {:try_start_2d .. :try_end_37} :catchall_20

    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_fc

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_fa
    .catchall {:try_start_4b .. :try_end_4e} :catchall_20

    :try_start_4e
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v2, "uncrypt"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object p0

    if-nez p0, :cond_71

    const-string/jumbo p0, "RecoverySystemService"

    const-string p1, "Failed to connect to uncrypt socket"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_20

    return v3

    :cond_71
    const/high16 p1, -0x80000000

    move v0, p1

    :goto_74
    :try_start_74
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_7f

    if-eq v0, p1, :cond_7f

    goto :goto_74

    :cond_7f
    if-ltz v2, :cond_c8

    const/16 v0, 0x64

    if-gt v2, v0, :cond_c8

    const-string/jumbo v4, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt read status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_9d} :catch_a5
    .catchall {:try_start_74 .. :try_end_9d} :catchall_a3

    if-eqz p2, :cond_b0

    :try_start_9f
    invoke-interface {p2, v2}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a2} :catch_a7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a5
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_b0

    :catchall_a3
    move-exception p1

    goto :goto_f6

    :catch_a5
    move-exception p1

    goto :goto_ea

    :catch_a7
    :try_start_a7
    const-string/jumbo v4, "RecoverySystemService"

    const-string/jumbo v5, "RemoteException when posting progress"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    :goto_b0
    if-ne v2, v0, :cond_c6

    const-string/jumbo p1, "RecoverySystemService"

    const-string/jumbo p2, "uncrypt successfully finished."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c0} :catch_a5
    .catchall {:try_start_a7 .. :try_end_c0} :catchall_a3

    :try_start_c0
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_20

    const/4 p0, 0x1

    return p0

    :cond_c6
    move v0, v2

    goto :goto_74

    :cond_c8
    :try_start_c8
    const-string/jumbo p1, "RecoverySystemService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uncrypt failed with status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_e5} :catch_a5
    .catchall {:try_start_c8 .. :try_end_e5} :catchall_a3

    :try_start_e5
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    :goto_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_20

    goto :goto_129

    :goto_ea
    :try_start_ea
    const-string/jumbo p2, "RecoverySystemService"

    const-string v0, "IOException when reading status: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_a3

    :try_start_f2
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    goto :goto_e8

    :goto_f6
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    throw p1
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_20

    :catch_fa
    move-exception p1

    goto :goto_106

    :catchall_fc
    move-exception p1

    :try_start_fd
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_101

    goto :goto_105

    :catchall_101
    move-exception p2

    :try_start_102
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_105
    throw p1
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_106} :catch_fa
    .catchall {:try_start_102 .. :try_end_106} :catchall_20

    :goto_106
    :try_start_106
    const-string/jumbo p2, "RecoverySystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    :goto_129
    return v3

    :goto_12a
    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_106 .. :try_end_12b} :catchall_20

    throw p0
.end method
