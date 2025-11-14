.class public Lcom/android/server/pdb/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field static final FRP_SECRET_MAGIC:[B

.field static final FRP_SECRET_SIZE:I = 0x20

.field static final HEADER_SIZE:I = 0x8

.field static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field public mAllowedUid:I

.field public mBlockDeviceSize:J

.field public final mContext:Landroid/content/Context;

.field public final mDataBlockFile:Ljava/lang/String;

.field public mFrpActive:Z

.field public final mFrpEnforced:Z

.field public final mFrpSecretFile:Ljava/lang/String;

.field public final mFrpSecretTmpFile:Ljava/lang/String;

.field public final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field public final mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

.field public final mIsFileBacked:Z

.field public mIsWritable:Z

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/pdb/PersistentDataBlockService$1;


# direct methods
.method public static -$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v2

    const-wide/16 v4, 0x2738

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e9

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x19000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_20

    return-wide v2

    :cond_20
    return-wide v0
.end method

.method public static -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.OEM_UNLOCK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_18

    goto :goto_20

    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    return-void
.end method

.method public static -$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic -$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    return-void

    :array_a
    .array-data 1
        -0x26t
        -0x3et
        -0x4t
        -0x33t
        -0x47t
        0x1bt
        0x9t
        -0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    new-instance v2, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    new-instance v2, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-direct {v2, p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    const-string p1, "/data/system/frp_secret"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    const-string p1, "/data/system/frp_secret_tmp"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    const-string/jumbo p1, "ro.gsid.image_running"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4a

    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    const-string p1, "/data/gsi_persistent_data"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-void

    :cond_4a
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    const-string/jumbo p1, "ro.frp.pst"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    iput-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    iput-boolean p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    iput-boolean p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    iput-object p7, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    return-void
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public activateFrp()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public automaticallyDeactivateFrpIfPossible()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_5d

    :cond_10
    const-string/jumbo v1, "PersistentDataBlockService"

    const-string v3, "Failed to deactivate with primary secret file, trying backup."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    monitor-exit v0

    return v2

    :cond_25
    const-string/jumbo v1, "PersistentDataBlockService"

    const-string v3, "Failed to deactivate with backup secret file, trying default secret."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result v1

    if-eqz v1, :cond_39

    monitor-exit v0

    return v2

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isUpgradingFromPreVRelease()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_53

    const-string/jumbo v1, "PersistentDataBlockService"

    const-string/jumbo v4, "Upgrading from Android 14 or lower, defaulting FRP secret"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    iput-boolean v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    monitor-exit v0

    return v2

    :cond_53
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string v1, "Did not find valid FRP secret, FRP remains active."

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_e

    throw p0
.end method

.method public final computeAndWriteDigestLocked()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_30

    const/16 v2, 0x20

    :try_start_1b
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_32

    :try_start_2c
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    return v0

    :catch_30
    move-exception p0

    goto :goto_3e

    :catchall_32
    move-exception v0

    if-eqz p0, :cond_3d

    :try_start_35
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p0

    :try_start_3a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_30

    :goto_3e
    const-string/jumbo v0, "PersistentDataBlockService"

    const-string/jumbo v2, "failed to write block checksum"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    return v1
.end method

.method public final computeDigestLocked([B)[B
    .registers 8

    const-string/jumbo v0, "PersistentDataBlockService"

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_15} :catch_62

    :try_start_15
    const-string/jumbo p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1c} :catch_57

    const/16 v3, 0x20

    if-eqz p1, :cond_2b

    :try_start_20
    array-length v4, p1

    if-ne v4, v3, :cond_2b

    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_2e

    :catchall_27
    move-exception p0

    goto :goto_53

    :catch_29
    move-exception p0

    goto :goto_49

    :cond_2b
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_2e
    const/16 p1, 0x400

    new-array p1, p1, [B

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_36
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_41

    invoke-virtual {p0, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_40} :catch_29
    .catchall {:try_start_20 .. :try_end_40} :catchall_27

    goto :goto_36

    :cond_41
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :goto_49
    :try_start_49
    const-string/jumbo p1, "failed to read partition"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_27

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :goto_53
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catch_57
    move-exception p0

    const-string/jumbo p1, "SHA-256 not supported?"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catch_62
    move-exception p0

    const-string/jumbo p1, "partition not available?"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final deactivateFrp([B)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_87

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_a

    goto/16 :goto_87

    :cond_a
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v3

    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v6, v5

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object v3

    if-nez v3, :cond_24

    const-string/jumbo v3, "PersistentDataBlockService"

    const-string v4, "Failed to read FRP magic region."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_28

    :cond_24
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    :goto_28
    if-nez v3, :cond_39

    const-string/jumbo v3, "PersistentDataBlockService"

    const-string/jumbo v4, "No FRP secret magic, system must have been upgraded."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_85

    :cond_39
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_37

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object v1

    if-eqz v1, :cond_7c

    array-length v3, v1

    if-eq v3, v2, :cond_48

    goto :goto_7c

    :cond_48
    invoke-static {p1, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_5f

    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    const-string/jumbo p1, "PersistentDataBlockService"

    const-string v0, "FRP secret matched, FRP deactivated."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    const/4 p0, 0x1

    return p0

    :cond_5f
    const-string/jumbo p0, "PersistentDataBlockService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRP deactivation failed with secret "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7c
    :goto_7c
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string p1, "Failed to read FRP secret from persistent data partition"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_85
    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_37

    throw p0

    :cond_87
    :goto_87
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string p1, "Attempted to deactivate FRP with a null or incorrectly-sized secret"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final deactivateFrpWithFileSecret(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    const-string v1, "Failed to read FRP secret file: "

    const-string v2, " "

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PersistentDataBlockService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doGetOemUnlockEnabled()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_44

    :try_start_12
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_32
    .catchall {:try_start_12 .. :try_end_15} :catchall_30

    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    move p0, v0

    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_32
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    goto :goto_40

    :catch_32
    move-exception p0

    :try_start_33
    const-string/jumbo v2, "PersistentDataBlockService"

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_40
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :catch_44
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doSetOemUnlockEnabledLocked(Z)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_3c

    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_30

    :try_start_2c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_3c

    return-void

    :catchall_30
    move-exception p0

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception p1

    :try_start_38
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    const-string/jumbo p1, "PersistentDataBlockService"

    const-string/jumbo v0, "unable to access persistent partition"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enforceChecksumValidity()Z
    .registers 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_17
    move-exception p0

    goto :goto_27

    :cond_19
    :goto_19
    const-string/jumbo v0, "PersistentDataBlockService"

    const-string v2, "Formatting FRP partition..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    monitor-exit v1

    return v0

    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_17

    throw p0
.end method

.method public final enforceFactoryResetProtectionInactive()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_1b

    :cond_b
    const-string/jumbo p0, "PersistentDataBlockService"

    const-string v0, "Attempt to update PDB was blocked because FRP is active."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "FRP is active"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method public final enforceUid(IZ)V
    .registers 4

    iget p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    if-eq p1, p0, :cond_1c

    if-eqz p1, :cond_1c

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_d

    if-eqz p2, :cond_d

    goto :goto_1c

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p2, "Uid "

    const-string v0, " not allowed to access PDB"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method public formatPartitionLocked(Z)V
    .registers 11

    const-string/jumbo v0, "PersistentDataBlockService"

    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_a9

    const/16 v2, 0x28

    :try_start_13
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    new-array v4, v3, [B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v4, 0x19901873

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v5
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_48

    long-to-int v5, v5

    iget-boolean v6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v6, :cond_4a

    add-int/lit16 v5, v5, -0x2738

    :try_start_3d
    sget-object v7, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v7, v7

    sub-int/2addr v5, v7

    add-int/lit16 v5, v5, -0x409

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_50

    :catchall_48
    move-exception p0

    goto :goto_ab

    :cond_4a
    add-int/lit16 v5, v5, -0x2b21

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_50
    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    if-eqz v6, :cond_79

    const-string/jumbo v5, "Writing FRP secret magic"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const-string/jumbo v5, "Writing default FRP secret"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    iput-boolean v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    :cond_79
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_9f
    .catchall {:try_start_3d .. :try_end_9f} :catchall_48

    :try_start_9f
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a9

    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void

    :catch_a9
    move-exception p0

    goto :goto_b6

    :goto_ab
    if-eqz v1, :cond_b5

    :try_start_ad
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception p1

    :try_start_b2
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    throw p0
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b6} :catch_a9

    :goto_b6
    const-string/jumbo p1, "failed to format block"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getBlockDeviceSize()J
    .registers 6

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    if-eqz v1, :cond_17

    const-wide/32 v1, 0x19000

    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    goto :goto_1f

    :catchall_15
    move-exception p0

    goto :goto_23

    :cond_17
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    :cond_1f
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_15

    iget-wide v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_15

    throw p0
.end method

.method public getFrpCredentialDataOffset()J
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getOemUnlockDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrpSecretDataOffset()J
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrpSecretMagicOffset()J
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v0

    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length p0, p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInterfaceForTesting()Landroid/service/persistentdata/IPersistentDataBlockService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-static {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object p0

    return-object p0
.end method

.method public getInternalInterfaceForTesting()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    return-object p0
.end method

.method public getMaximumFrpDataSize()I
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x28

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method public getOemUnlockDataOffset()J
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTestHarnessModeDataOffset()J
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isFrpActive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isUpgradingFromPreVRelease()Z
    .registers 3

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x0

    if-nez p0, :cond_15

    const-string/jumbo p0, "PersistentDataBlockService"

    const-string/jumbo v1, "Unable to retrieve PackageManagerInternal"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_15
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_24

    const/16 v1, 0x23

    if-ge p0, v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v0
.end method

.method public final moveFrpTempFileToPrimary()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v2, v1

    invoke-static {v0, p0, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    const-string/jumbo v0, "PersistentDataBlockService"

    const-string v1, "Error moving FRP backup file to primary (ignored)"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 6

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7a

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e} :catch_69

    if-eqz v0, :cond_60

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-gez v0, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    :try_start_32
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_3e} :catch_3f

    goto :goto_56

    :catch_3f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "not able to find package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PersistentDataBlockService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    const/4 v0, -0x1

    :goto_56
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_7a

    :cond_60
    :try_start_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Service PersistentDataBlockService init timeout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_69} :catch_69

    :catch_69
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "Service PersistentDataBlockService init interrupted"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7a
    :goto_7a
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public final onStart()V
    .registers 2

    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    const-string/jumbo p0, "PersistentDataBlockService.onStart"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public readDataBlock(JI)[B
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_2e

    :try_start_11
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    :try_start_14
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    new-array p1, p3, [B

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2e

    return-object p1

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    :try_start_25
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    :try_start_2a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setAllowedUid(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    return-void
.end method

.method public final setOldSettingForBackworkCompatibility(Z)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "secure_frp_mode"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public signalInitDone()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final writeFrpMagicAndDefaultSecret()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_52

    :try_start_e
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_57

    :try_start_11
    const-string/jumbo v2, "PersistentDataBlockService"

    const-string/jumbo v3, "Writing default FRP secret"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    const-string/jumbo v3, "PersistentDataBlockService"

    const-string/jumbo v4, "Writing FRP secret magic"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-object v3, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_54

    :try_start_4e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_6b

    :catch_52
    move-exception v0

    goto :goto_63

    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v1

    if-eqz v0, :cond_62

    :try_start_5a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v0

    :try_start_5f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw v1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_52

    :goto_63
    const-string/jumbo v1, "PersistentDataBlockService"

    const-string v2, "Failed to write FRP magic and default secret"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6b
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void
.end method
