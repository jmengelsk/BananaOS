.class public Lcom/android/server/media/quality/MediaQualityService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbackRecords:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentPictureHandleToOriginal:Lcom/android/server/media/quality/BiMap;

.field public final mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

.field public final mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

.field public final mHandleToPictureProfile:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

.field public final mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

.field public final mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

.field public final mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

.field public final mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPictureProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

.field public final mPictureProfileLock:Ljava/lang/Object;

.field public final mPictureProfileSharedPreference:Landroid/content/SharedPreferences;

.field public final mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

.field public mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

.field public mSoundProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

.field public final mSoundProfileLock:Ljava/lang/Object;

.field public final mSoundProfileSharedPreference:Landroid/content/SharedPreferences;

.field public final mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

.field public mSpChangedListener:Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

.field public mSurfaceControlActivePictureListener:Lcom/android/server/media/quality/MediaQualityService$1;

.field public final mUserStateLock:Ljava/lang/Object;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z
    .registers 3

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "default"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    return v0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHandleToPictureProfile:Ljava/util/Map;

    new-instance v0, Lcom/android/server/media/quality/BiMap;

    invoke-direct {v0}, Lcom/android/server/media/quality/BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCurrentPictureHandleToOriginal:Lcom/android/server/media/quality/BiMap;

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/server/media/quality/BiMap;

    invoke-direct {v0}, Lcom/android/server/media/quality/BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    new-instance v0, Lcom/android/server/media/quality/BiMap;

    invoke-direct {v0}, Lcom/android/server/media/quality/BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v1, "media_quality.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "picture_profile_preference"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileSharedPreference:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sound_profile_preference"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileSharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/quality/MediaQualityService$UserState;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_21

    if-nez v1, :cond_20

    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$UserState;

    invoke-direct {v0, p0}, Lcom/android/server/media/quality/MediaQualityService$UserState;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_16
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    return-object v0

    :catchall_1d
    move-exception p0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    return-object v1

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final onStart()V
    .registers 11

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo p0, "MediaQualityService"

    const-string v0, "Binder is null"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    const-string/jumbo v3, "MediaQualityService"

    const-string v4, "Binder is not null"

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/media/quality/MediaQualityService$1;

    invoke-direct {v3, p0}, Lcom/android/server/media/quality/MediaQualityService$1;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v3, p0, Lcom/android/server/media/quality/MediaQualityService;->mSurfaceControlActivePictureListener:Lcom/android/server/media/quality/MediaQualityService$1;

    invoke-virtual {v3}, Landroid/view/SurfaceControlActivePictureListener;->startListening()V

    sget v3, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub;->$r8$clinit:I

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_44

    instance-of v3, v2, Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v3, :cond_44

    check-cast v2, Landroid/hardware/tv/mediaquality/IMediaQuality;

    goto :goto_4b

    :cond_44
    new-instance v2, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_4b
    iput-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    :try_start_4d
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    check-cast v2, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v2, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setAmbientBacklightCallback(Landroid/hardware/tv/mediaquality/IMediaQualityCallback;)V

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast v1, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->getPictureProfileListener()Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    check-cast v1, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v1}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->getSoundProfileListener()Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mSpChangedListener:Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

    check-cast v1, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v1, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setPictureProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;)V

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

    check-cast v1, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;

    invoke-virtual {v1, v2}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub$Proxy;->setSoundProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;)V

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_7d} :catch_ca

    :try_start_7d
    const-string/jumbo v2, "_type = ? AND _name = ?"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "default"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2, v3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_a3
    if-ge v5, v3, :cond_c6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v5, v0

    check-cast v4, Landroid/media/quality/PictureProfile;

    iget-object v6, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    :catchall_c4
    move-exception v0

    goto :goto_c8

    :cond_c6
    monitor-exit v1

    goto :goto_d3

    :goto_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_7d .. :try_end_c9} :catchall_c4

    :try_start_c9
    throw v0
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_ca} :catch_ca

    :catch_ca
    move-exception v0

    const-string/jumbo v1, "MediaQualityService"

    const-string v2, "Failed to set ambient backlight detector callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    const-string/jumbo v0, "media_quality"

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;

    invoke-direct {v1, p0}, Lcom/android/server/media/quality/MediaQualityService$BinderService;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "picture_quality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public final updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "sound_quality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method
