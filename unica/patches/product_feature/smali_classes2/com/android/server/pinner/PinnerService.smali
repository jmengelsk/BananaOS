.class public final Lcom/android/server/pinner/PinnerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_ANON_SIZE:J

.field public static final PAGE_SIZE:I

.field public static final PROP_PIN_PINLIST:Z


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBroadcastReceiver:Lcom/android/server/pinner/PinnerService$1;

.field public final mConfiguredAssistantPinBytes:I

.field public final mConfiguredCameraPinBytes:I

.field public final mConfiguredHomePinBytes:I

.field public mConfiguredMaxPinnedMemory:J

.field public final mConfiguredMaxPinnedMemoryPercentage:I

.field public final mConfiguredToPinAssistant:Z

.field public final mConfiguredToPinCamera:Z

.field public final mConfiguredWebviewPinBytes:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentPinnedMemory:J

.field public mCurrentlyPinnedAnonSize:J

.field public final mDeviceConfigAnonSizeListener:Lcom/android/server/pinner/PinnerService$2;

.field public final mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

.field public final mInjector:Lcom/android/server/pinner/PinnerService$Injector;

.field public final mPendingRepin:Landroid/util/ArrayMap;

.field public mPinAnonAddress:J

.field public mPinAnonSize:J

.field public mPinKeys:Landroid/util/ArraySet;

.field public final mPinnedApps:Landroid/util/ArrayMap;

.field public final mPinnedFiles:Landroid/util/ArrayMap;

.field public final mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    const-string/jumbo v0, "pinner.pin_shared_anon_size"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/pinner/PinnerService$Injector;

    invoke-direct {v0}, Lcom/android/server/pinner/PinnerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;-><init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pinner/PinnerService$Injector;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    new-instance v1, Lcom/android/server/pinner/PinnerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$1;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v1, p0, Lcom/android/server/pinner/PinnerService;->mBroadcastReceiver:Lcom/android/server/pinner/PinnerService$1;

    new-instance v2, Lcom/android/server/pinner/PinnerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/pinner/PinnerService$2;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigAnonSizeListener:Lcom/android/server/pinner/PinnerService$2;

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x111021a

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0130

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e012f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0131

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1110219

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0133

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0132

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    new-instance p2, Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, p0, v2}, Lcom/android/server/pinner/PinnerService$PinnerHandler;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    :try_start_df
    new-instance v1, Lcom/android/server/pinner/PinnerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pinner/PinnerService$4;-><init>(Lcom/android/server/pinner/PinnerService;)V

    const/16 v2, 0xa

    invoke-interface {p2, v1, v2, p1, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_e9} :catch_ea

    goto :goto_f3

    :catch_ea
    move-exception p2

    const-string/jumbo v0, "PinnerService"

    const-string v1, "Failed to register uid observer"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f3
    const-string/jumbo p2, "user_setup_complete"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/server/pinner/PinnerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pinner/PinnerService$3;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/net/Uri;)V

    const/4 v2, -0x1

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigAnonSizeListener:Lcom/android/server/pinner/PinnerService$2;

    const-string/jumbo v0, "runtime_native"

    invoke-interface {p1, v0, p2, p0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static getNameForKey(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    const-string p0, "Assistant"

    return-object p0

    :cond_e
    const-string p0, "Home"

    return-object p0

    :cond_11
    const-string p0, "Camera"

    return-object p0
.end method

.method public static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    sget-boolean v0, Lcom/android/server/pinner/PinnerService;->PROP_PIN_PINLIST:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_38

    :cond_6
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "assets/pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    :cond_16
    const-string v2, "\": pinning as blob"

    const-string/jumbo v3, "PinnerService"

    if-eqz v0, :cond_39

    :try_start_1d
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error reading pin metadata \""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-object v1

    :cond_39
    const-string p0, "Could not find pinlist.meta for \""

    invoke-static {p0, p1, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_2a

    :try_start_3
    new-instance p3, Ljava/util/zip/ZipFile;

    invoke-direct {p3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    goto :goto_2b

    :catch_9
    move-exception p3

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_28

    :goto_d
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "could not open \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" as zip: pinning as blob"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PinnerService"

    invoke-static {v2, v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_b

    goto :goto_2a

    :goto_28
    move-object p3, v0

    goto :goto_59

    :cond_2a
    :goto_2a
    move-object p3, v0

    :goto_2b
    if-eqz p3, :cond_34

    :try_start_2d
    invoke-static {p3, p0}, Lcom/android/server/pinner/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_59

    :cond_34
    :goto_34
    const/4 v1, 0x0

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    goto :goto_3a

    :cond_39
    move v2, v1

    :goto_3a
    if-eqz v2, :cond_42

    new-instance v1, Lcom/android/server/pinner/PinRangeSourceStream;

    invoke-direct {v1, v0}, Lcom/android/server/pinner/PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4a

    :cond_42
    new-instance v3, Lcom/android/server/pinner/PinRangeSourceStatic;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v3, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    move-object v1, v3

    :goto_4a
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/pinner/PinnerService;->pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-eqz p0, :cond_52

    iput-boolean v2, p0, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z
    :try_end_52
    .catchall {:try_start_2d .. :try_end_52} :catchall_32

    :cond_52
    invoke-static {v0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    return-object p0

    :goto_59
    invoke-static {v0}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    invoke-static {p3}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static pinFileRanges(Ljava/lang/String;JLcom/android/server/pinner/PinRangeSource;)Lcom/android/server/pinner/PinnedFile;
    .registers 27

    move-object/from16 v7, p0

    sget v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v2, -0x1

    :try_start_d
    sget v4, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v7, v4, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_17} :catch_100
    .catchall {:try_start_d .. :try_end_17} :catchall_fe

    :try_start_17
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v4, v1, Landroid/system/StructStat;->st_size:J

    const-wide/32 v10, 0x7fffffff

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_24} :catch_f8
    .catchall {:try_start_17 .. :try_end_24} :catchall_f2

    long-to-int v1, v4

    int-to-long v12, v1

    :try_start_26
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v1
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_32} :catch_ef
    .catchall {:try_start_26 .. :try_end_32} :catchall_ec

    :try_start_32
    new-instance v3, Lcom/android/server/pinner/PinnerService$PinRange;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    int-to-long v4, v0

    rem-long v10, p1, v4

    cmp-long v0, v10, v8

    if-eqz v0, :cond_51

    rem-long v10, p1, v4
    :try_end_40
    .catch Landroid/system/ErrnoException; {:try_start_32 .. :try_end_40} :catch_4b
    .catchall {:try_start_32 .. :try_end_40} :catchall_45

    sub-long v10, p1, v10

    :goto_42
    move-wide v14, v4

    move-wide v5, v8

    goto :goto_54

    :catchall_45
    move-exception v0

    :goto_46
    move-wide v2, v1

    :goto_47
    move-object/from16 v1, v16

    goto/16 :goto_128

    :catch_4b
    move-exception v0

    :goto_4c
    move-wide v2, v1

    :goto_4d
    move-object/from16 v1, v16

    goto/16 :goto_102

    :cond_51
    move-wide/from16 v10, p1

    goto :goto_42

    :goto_54
    cmp-long v0, v5, v10

    if-gez v0, :cond_cc

    move-object/from16 v0, p3

    :try_start_5a
    invoke-virtual {v0, v3}, Lcom/android/server/pinner/PinRangeSource;->read(Lcom/android/server/pinner/PinnerService$PinRange;)Z

    move-result v4

    if-eqz v4, :cond_cc

    iget v4, v3, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    int-to-long v8, v4

    iget v4, v3, Lcom/android/server/pinner/PinnerService$PinRange;->length:I
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_5a .. :try_end_65} :catch_c8
    .catchall {:try_start_5a .. :try_end_65} :catchall_c4

    move-wide/from16 v19, v1

    int-to-long v0, v4

    :try_start_68
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-object v4, v3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long v2, v12, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long v2, v10, v5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    rem-long v21, v8, v14

    add-long v0, v0, v21

    rem-long v21, v8, v14

    sub-long v8, v8, v21

    rem-long v21, v0, v14

    const-wide/16 v17, 0x0

    cmp-long v21, v21, v17

    if-eqz v21, :cond_aa

    rem-long v21, v0, v14

    sub-long v21, v14, v21

    add-long v0, v21, v0

    goto :goto_aa

    :catchall_9c
    move-exception v0

    :goto_9d
    move-object/from16 v1, v16

    move-wide/from16 v2, v19

    goto/16 :goto_128

    :catch_a3
    move-exception v0

    :goto_a4
    move-object/from16 v1, v16

    move-wide/from16 v2, v19

    goto/16 :goto_102

    :cond_aa
    :goto_aa
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v21, v0, v2

    if-lez v21, :cond_bd

    add-long v2, v19, v8

    invoke-static {v2, v3, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_bd
    .catch Landroid/system/ErrnoException; {:try_start_68 .. :try_end_bd} :catch_a3
    .catchall {:try_start_68 .. :try_end_bd} :catchall_9c

    :cond_bd
    add-long/2addr v5, v0

    move-object v3, v4

    move-wide/from16 v1, v19

    const-wide/16 v8, 0x0

    goto :goto_54

    :catchall_c4
    move-exception v0

    move-wide/from16 v19, v1

    goto :goto_9d

    :catch_c8
    move-exception v0

    move-wide/from16 v19, v1

    goto :goto_a4

    :cond_cc
    move-wide/from16 v19, v1

    :try_start_ce
    new-instance v0, Lcom/android/server/pinner/PinnedFile;
    :try_end_d0
    .catch Landroid/system/ErrnoException; {:try_start_ce .. :try_end_d0} :catch_e7
    .catchall {:try_start_ce .. :try_end_d0} :catchall_e2

    move-wide v3, v12

    move-wide/from16 v1, v19

    :try_start_d3
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pinner/PinnedFile;-><init>(JJJLjava/lang/String;)V
    :try_end_d6
    .catch Landroid/system/ErrnoException; {:try_start_d3 .. :try_end_d6} :catch_de
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_da

    invoke-static/range {v16 .. v16}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    return-object v0

    :catchall_da
    move-exception v0

    move-wide v12, v3

    goto/16 :goto_46

    :catch_de
    move-exception v0

    move-wide v12, v3

    goto/16 :goto_4c

    :catchall_e2
    move-exception v0

    move-wide/from16 v1, v19

    goto/16 :goto_46

    :catch_e7
    move-exception v0

    move-wide/from16 v1, v19

    goto/16 :goto_4c

    :catchall_ec
    move-exception v0

    goto/16 :goto_47

    :catch_ef
    move-exception v0

    goto/16 :goto_4d

    :catchall_f2
    move-exception v0

    move-object/from16 v1, v16

    :goto_f5
    const-wide/16 v12, 0x0

    goto :goto_128

    :catch_f8
    move-exception v0

    move-object/from16 v1, v16

    :goto_fb
    const-wide/16 v12, 0x0

    goto :goto_102

    :catchall_fe
    move-exception v0

    goto :goto_f5

    :catch_100
    move-exception v0

    goto :goto_fb

    :goto_102
    :try_start_102
    const-string/jumbo v4, "PinnerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not pin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_102 .. :try_end_119} :catchall_127

    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    if-ltz v0, :cond_125

    invoke-static {v2, v3, v12, v13}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_125
    const/4 v0, 0x0

    return-object v0

    :catchall_127
    move-exception v0

    :goto_128
    invoke-static {v1}, Lcom/android/server/pinner/PinnerUtils;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v17, 0x0

    cmp-long v1, v2, v17

    if-ltz v1, :cond_134

    invoke-static {v2, v3, v12, v13}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_134
    throw v0
.end method


# virtual methods
.method public final createPinKeys()Landroid/util/ArraySet;
    .registers 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v3, "pinner.pin_camera"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "runtime_native_boot"

    const-string/jumbo v5, "pin_camera"

    invoke-interface {v1, v4, v5, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    if-lez v1, :cond_32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-boolean p0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz p0, :cond_3e

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3e
    return-object v0
.end method

.method public final getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;
    .registers 9

    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0xd0000

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    goto :goto_51

    :cond_10
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-class v4, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_25
    if-eqz p3, :cond_51

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p1, v2

    :cond_36
    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_36

    if-nez p1, :cond_51

    move-object p1, p2

    goto :goto_36

    :cond_50
    return-object p1

    :cond_51
    :goto_51
    return-object v2
.end method

.method public final getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_39

    if-eq p1, v1, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.ASSIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_18
    iget-object p1, p0, Lcom/android/server/pinner/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_24
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object p1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_39
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_53

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    :cond_53
    if-nez p1, :cond_5f

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/pinner/PinnerService;->getApplicationInfoForIntent(ILandroid/content/Intent;Z)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_5f
    return-object p1
.end method

.method public final onStart()V
    .registers 7

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemoryPercentage:I

    int-to-long v2, v2

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->clamp(JII)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    new-instance v0, Lcom/android/server/pinner/PinnerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/pinner/PinnerService$BinderService;-><init>(Lcom/android/server/pinner/PinnerService;)V

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "pinner"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0, v4}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    :cond_f
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->sendPinAppsMessage(I)V

    :cond_11
    return-void
.end method

.method public final pinApp(IIZ)V
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedApp;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d4

    const/4 v1, -0x1

    if-eqz v0, :cond_1c

    :try_start_10
    iget-boolean v2, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    if-eqz v2, :cond_1c

    iget v0, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_d7

    :cond_1c
    move v0, v1

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_d4

    if-nez p3, :cond_36

    if-eq v0, v1, :cond_36

    monitor-enter p0

    :try_start_23
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_32

    throw p1

    :cond_36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    if-eqz v5, :cond_d3

    new-instance p2, Lcom/android/server/pinner/PinnerService$PinnedApp;

    invoke-direct {p2, p0, v5}, Lcom/android/server/pinner/PinnerService$PinnedApp;-><init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;)V

    monitor-enter p0

    :try_start_45
    iget-object p3, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_cc

    const/4 p3, 0x0

    if-eqz p1, :cond_60

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5a

    move v0, p3

    goto :goto_62

    :cond_5a
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredAssistantPinBytes:I

    goto :goto_62

    :cond_5d
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    goto :goto_62

    :cond_60
    iget v0, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredCameraPinBytes:I

    :goto_62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_7c

    array-length v2, v1

    move v3, p3

    :goto_72
    if-ge v3, v2, :cond_7c

    aget-object v4, v1, v3

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_7c
    int-to-long v0, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-wide v3, v0

    :goto_82
    if-ge p3, v9, :cond_d3

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_9e

    const-string/jumbo v0, "PinnerService"

    const-string/jumbo v1, "Reached to the pin size limit. Skipping: "

    invoke-static {v1, v2, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_bb

    :cond_9e
    invoke-static {p1}, Lcom/android/server/pinner/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    if-nez p0, :cond_bd

    const-string/jumbo p0, "PinnerService"

    const-string v0, "Failed to pin "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    move-object p0, v1

    goto :goto_82

    :cond_bd
    monitor-enter v1

    :try_start_be
    iget-object v0, p2, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_be .. :try_end_c4} :catchall_c8

    iget-wide v6, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v3, v6

    goto :goto_bb

    :catchall_c8
    move-exception v0

    move-object p0, v0

    :try_start_ca
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c8

    throw p0

    :catchall_cc
    move-exception v0

    move-object v1, p0

    :goto_ce
    move-object p0, v0

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d1

    throw p0

    :catchall_d1
    move-exception v0

    goto :goto_ce

    :cond_d3
    return-void

    :catchall_d4
    move-exception v0

    move-object v1, p0

    :goto_d6
    move-object p1, v0

    :goto_d7
    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d9

    throw p1

    :catchall_d9
    move-exception v0

    goto :goto_d6
.end method

.method public final pinAppsInternal(IZ)V
    .registers 6

    if-eqz p2, :cond_21

    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object p2

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo p1, "PinnerService"

    const-string p2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    goto :goto_1f

    :cond_1b
    iput-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    monitor-exit p0

    goto :goto_21

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_19

    throw p1

    :cond_21
    :goto_21
    monitor-enter p0

    :try_start_22
    iget-object p2, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_3e

    monitor-exit p0

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_2b
    if-ltz v0, :cond_3d

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_3d
    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public final pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;
    .registers 16

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnedFile;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d4

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-wide v2, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)V

    :cond_17
    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    iget-wide v4, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2c

    const-string/jumbo p0, "PinnerService"

    const-string/jumbo p2, "Reached pin quota, skipping file: "

    invoke-static {p2, p1, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2c
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/pinner/PinnerService;->pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object p2

    if-nez p2, :cond_4e

    const-string/jumbo p0, "PinnerService"

    const-string p2, "Failed to pin file = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4e
    iput-object p5, p2, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v6, p2, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    monitor-enter p0

    :try_start_58
    iget-object p1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object p3, p2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_d1

    if-eqz p6, :cond_d0

    iget-wide p5, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v2, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredMaxPinnedMemory:J

    sub-long/2addr v2, p5

    iget-object p1, p2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string p3, ".jar"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iget-object p3, p2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const-string v0, ".apk"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    or-int/2addr p1, p3

    if-eqz p1, :cond_cd

    if-eqz p4, :cond_7f

    iget-object p1, p4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    goto :goto_80

    :cond_7f
    move-object p1, v1

    :goto_80
    const/4 p3, 0x0

    if-nez p1, :cond_87

    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object p1, p1, p3

    :cond_87
    invoke-static {p1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_8b
    iget-object p4, p2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-static {p4, p1}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_91

    :catch_91
    if-nez v1, :cond_94

    goto :goto_cd

    :cond_94
    array-length p1, v1

    move p4, p3

    :goto_96
    if-ge p4, p1, :cond_cd

    aget-object v0, v1, p4

    invoke-virtual {p0, v0}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/pinner/PinnerService;->mInjector:Lcom/android/server/pinner/PinnerService$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3, p3}, Lcom/android/server/pinner/PinnerService;->pinFileInternal(Ljava/lang/String;JZ)Lcom/android/server/pinner/PinnedFile;

    move-result-object v6

    if-nez v6, :cond_b1

    const-string/jumbo p1, "PinnerService"

    const-string p3, "Failed to pin ART file = "

    invoke-static {p3, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd

    :cond_b1
    iget-object v0, p2, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v7, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v2, v7

    add-long/2addr v4, v7

    monitor-enter p0

    :try_start_bf
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v7, v6, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    add-int/lit8 p4, p4, 0x1

    goto :goto_96

    :catchall_ca
    move-exception p1

    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_bf .. :try_end_cc} :catchall_ca

    throw p1

    :cond_cd
    :goto_cd
    add-long/2addr p5, v4

    iput-wide p5, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    :cond_d0
    return-object p2

    :catchall_d1
    move-exception p1

    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw p1

    :catchall_d4
    move-exception p1

    :try_start_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw p1
.end method

.method public final refreshPinAnonConfig()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pinner/PinnerService;->mDeviceConfigInterface:Landroid/provider/DeviceConfigInterface;

    sget-wide v2, Lcom/android/server/pinner/PinnerService;->DEFAULT_ANON_SIZE:J

    const-string/jumbo v4, "runtime_native"

    const-string/jumbo v5, "pin_shared_anon_size"

    invoke-interface {v1, v4, v5, v2, v3}, Landroid/provider/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, 0x80000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v5, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    cmp-long v5, v1, v5

    if-eqz v5, :cond_177

    iput-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonSize:J

    cmp-long v5, v1, v3

    const-string/jumbo v6, "PinnerService"

    if-nez v5, :cond_44

    const-string/jumbo v1, "pinAnonRegion: releasing pinned region"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3f

    iget-wide v5, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-static {v1, v2, v5, v6}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_3f
    iput-wide v3, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    iput-wide v3, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    return-void

    :cond_44
    sget v5, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    int-to-long v7, v5

    rem-long v7, v1, v7

    cmp-long v5, v7, v3

    if-eqz v5, :cond_60

    sub-long/2addr v1, v7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pinAnonRegion: aligning size to "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    move-wide v9, v1

    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a1

    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    cmp-long v1, v1, v9

    if-nez v1, :cond_80

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pinAnonRegion: already pinned region of size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pinAnonRegion: resetting pinned region for new size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9d

    iget-wide v7, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-static {v1, v2, v7, v8}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_9d
    iput-wide v3, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    iput-wide v3, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    :cond_a1
    :try_start_a1
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int v11, v1, v2

    sget v1, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v2, Landroid/system/OsConstants;->MAP_ANONYMOUS:I

    or-int v12, v1, v2

    new-instance v13, Ljava/io/FileDescriptor;

    invoke-direct {v13}, Ljava/io/FileDescriptor;-><init>()V

    const-wide/16 v14, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v7 .. v15}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v1
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ba} :catch_14e
    .catchall {:try_start_a1 .. :try_end_ba} :catchall_148

    :try_start_ba
    const-class v5, Lsun/misc/Unsafe;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c1} :catch_144
    .catchall {:try_start_ba .. :try_end_c1} :catchall_140

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    move-object v14, v12

    :goto_c5
    const/4 v15, 0x1

    if-ge v13, v8, :cond_eb

    move-wide/from16 v16, v3

    :try_start_ca
    aget-object v3, v7, v13

    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lsun/misc/Unsafe;

    goto :goto_e6

    :catchall_e1
    move-exception v0

    goto/16 :goto_16f

    :catch_e4
    move-exception v0

    goto :goto_153

    :cond_e6
    :goto_e6
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v3, v16

    goto :goto_c5

    :cond_eb
    move-wide/from16 v16, v3

    if-eqz v14, :cond_138

    const-string/jumbo v3, "setMemory"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v11

    aput-object v7, v4, v15

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    invoke-virtual {v5, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v9, v10}, Landroid/system/Os;->mlock(JJ)V

    iput-wide v9, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    iput-wide v1, v0, Lcom/android/server/pinner/PinnerService;->mPinAnonAddress:J

    const-wide/16 v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinAnonRegion success, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/pinner/PinnerService;->mCurrentlyPinnedAnonSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_138
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Couldn\'t get Unsafe"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_140} :catch_e4
    .catchall {:try_start_ca .. :try_end_140} :catchall_e1

    :catchall_140
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_16f

    :catch_144
    move-exception v0

    move-wide/from16 v16, v3

    goto :goto_153

    :catchall_148
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v1, v16

    goto :goto_16f

    :catch_14e
    move-exception v0

    move-wide/from16 v16, v3

    move-wide/from16 v1, v16

    :goto_153
    :try_start_153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not pin anon region of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_167
    .catchall {:try_start_153 .. :try_end_167} :catchall_e1

    cmp-long v0, v1, v16

    if-ltz v0, :cond_177

    invoke-static {v1, v2, v9, v10}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    goto :goto_177

    :goto_16f
    cmp-long v3, v1, v16

    if-ltz v3, :cond_176

    invoke-static {v1, v2, v9, v10}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    :cond_176
    throw v0

    :cond_177
    :goto_177
    return-void
.end method

.method public final sendPinAppsMessage(I)V
    .registers 4

    new-instance v0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unpinApp(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedApp;

    if-nez v0, :cond_13

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    goto :goto_3a

    :cond_13
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_39

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)V

    goto :goto_29

    :cond_39
    return-void

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_11

    throw p1
.end method

.method public final unpinFile(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnedFile;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_48

    if-nez p1, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/pinner/PinnedFile;->close()V

    monitor-enter p0

    :try_start_11
    iget-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-wide v2, p1, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v0, :cond_44

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    if-nez v2, :cond_33

    goto :goto_26

    :cond_33
    iget-wide v3, v2, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    iget-wide v5, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/pinner/PinnerService;->mCurrentPinnedMemory:J

    iget-object v3, p0, Lcom/android/server/pinner/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :catchall_42
    move-exception p1

    goto :goto_46

    :cond_44
    monitor-exit p0

    return-void

    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_42

    throw p1

    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final update(Landroid/util/ArraySet;Z)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_61

    monitor-exit p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_60

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/pinner/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_5d

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Updating pinned files for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PinnerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, p0, v3, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_60
    return-void

    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public final updateActiveState(IZ)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget v2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_1c

    iput-boolean p2, v1, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_21

    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1f
    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_1a

    throw p1
.end method
