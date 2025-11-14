.class public final Lcom/android/server/pdb/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method public static printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "FRP secret in "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to read "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PersistentDataBlockService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p2, "FRP secret file "

    const-string v0, " exists, contents omitted."

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final deactivateFactoryResetProtection([B)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v1, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t configure Factory Reset Protection. Requires CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p0

    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo p1, "mIsWritable: "

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p3, p3, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "PersistentDataBlockService"

    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mDataBlockFile: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v1, "mIsFileBacked: "

    invoke-static {p2, v0, v1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    const-string/jumbo v1, "mInitDoneSignal: "

    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAllowedUid: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-string/jumbo v1, "mBlockDeviceSize: "

    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-wide v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p3, p3, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean p1, p1, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpStatus(Ljava/io/PrintWriter;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final enforcePersistentDataBlockAccess()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    :cond_0
    return-void
.end method

.method public final getDataBlockSize()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v4, v4, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x20

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const v3, 0x19901873

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_5
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v2, "error reading data block size"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catch_1
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getFlashLockState()I
    .locals 1

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    const-string/jumbo p0, "ro.boot.flash.locked"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getMaximumDataBlockSize()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOemUnlockEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method public final getPersistentDataPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const v0, 0x10403a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasFrpCredentialHandle()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v1, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PersistentDataBlockService"

    const-string/jumbo v1, "error reading frp handle"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "cannot read frp credential"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isFactoryResetProtectionActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    move-result p0

    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p6}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/pdb/PersistentDataBlockService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService$1;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final printFrpStatus(Ljava/io/PrintWriter;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    const-string v0, "FRP state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enforcement enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    const-string v2, "FRP state: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/server/pdb/PersistentDataBlockService$1;->printFrpDataFileContents(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v1

    sget-object v3, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v4, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PersistentDataBlockService"

    const-string v1, "Failed to read FRP magic region."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "FRP secret in PDB: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v2

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "FRP secret present but omitted."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "FRP magic not found"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "OEM unlock state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getOemUnlockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bootloader lock state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getFlashLockState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Verified boot state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ro.boot.verifiedbootstate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Has FRP credential handle: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->hasFrpCredentialHandle()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "FRP challenge block size: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;->getDataBlockSize()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final read()[B
    .locals 7

    const-string/jumbo v0, "failed to read entire data block. bytes read: "

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v1

    if-nez v1, :cond_0

    new-array p0, v3, [B

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v6, v6, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0x20

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const v5, 0x19901873

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    new-array v0, v3, [B

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v1, "failed to close OutputStream"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_4
    new-array v5, v4, [B

    invoke-virtual {v2, v5, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-ge v3, v4, :cond_3

    const-string/jumbo v5, "PersistentDataBlockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v1

    :catch_1
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v0, "failed to close OutputStream"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    return-object v5

    :catch_2
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v0, "failed to close OutputStream"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :goto_1
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :try_start_a
    const-string/jumbo v0, "PersistentDataBlockService"

    const-string/jumbo v3, "failed to read data"

    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :goto_2
    return-object v1

    :goto_3
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    :catch_4
    const-string/jumbo v0, "PersistentDataBlockService"

    const-string/jumbo v1, "failed to close OutputStream"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    throw p0

    :catch_5
    move-exception p0

    const-string/jumbo v0, "PersistentDataBlockService"

    const-string/jumbo v2, "partition not available?"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final setFactoryResetProtectionSecret([B)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v1, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t configure Factory Reset Protection. Requires CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    sget-object v3, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x3

    aput-object v3, v1, v5

    invoke-static {v0, p1, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeDataBuffer(JLjava/nio/ByteBuffer;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    return v4

    :catch_0
    move-exception p0

    const-string/jumbo p1, "PersistentDataBlockService"

    const-string v0, "Failed to write FRP secret file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid FRP secret: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOemUnlockEnabled(Z)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final wipe()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v2, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const v2, 0x19000

    new-array v2, v2, [B

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v1, "failed to wipe persistent partition"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iput-boolean v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v1, "persistent partition now wiped and unwritable"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final write([B)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J

    move-result-wide v0

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    neg-long p0, v0

    long-to-int p0, p0

    return p0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x28

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v1, 0x19901873

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    iget-boolean v3, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    const/4 v4, -0x1

    if-nez v3, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v2, v2, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v5, "rw"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    if-eqz p0, :cond_2

    array-length p0, p1

    monitor-exit v1

    return p0

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    const-string/jumbo p1, "PersistentDataBlockService"

    const-string/jumbo v0, "failed writing to the persistent data block"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return v4

    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method
