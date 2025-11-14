.class public final Lcom/android/server/media/quality/MediaQualityService$HalNotifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public static -$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v1, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "picture_quality"

    const-string/jumbo v4, "_id = ?"

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_22
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_4e

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_2d
    const/4 v4, 0x1

    if-le v0, v4, :cond_50

    :try_start_30
    const-string/jumbo v1, "MediaQualityService"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%d entries found for id=%d in %s. Should only ever be 0 or 1."

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v5, v0, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_4e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_4e
    move-exception p1

    goto :goto_5d

    :cond_50
    :try_start_50
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object p1, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {p0, p1}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_4e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_5d
    if-eqz p0, :cond_67

    :try_start_5f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p1
.end method

.method public static -$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v1, "picture_quality"

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p2, v0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {p0, p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    goto :goto_10

    :catchall_20
    move-exception p1

    goto :goto_26

    :cond_22
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :goto_26
    if-eqz p0, :cond_30

    :try_start_28
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p1
.end method

.method public static -$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_id = ?"

    const-string/jumbo v4, "sound_quality"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_22
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_4e

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_2d
    const/4 v3, 0x1

    if-le v1, v3, :cond_50

    :try_start_30
    const-string/jumbo p0, "MediaQualityService"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "%d entries found for id=%s in %s. Should only ever be 0 or 1."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v5, v1, p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_4e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_4e
    move-exception p0

    goto :goto_5d

    :cond_50
    :try_start_50
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {v0, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object p0
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_4e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :goto_5d
    if-eqz v0, :cond_67

    :try_start_5f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p0
.end method

.method public static -$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 6

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    const-string/jumbo v1, "sound_quality"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_22

    iget-object p3, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-static {p1, p3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    goto :goto_10

    :catchall_20
    move-exception p0

    goto :goto_26

    :cond_22
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :goto_26
    if-eqz p1, :cond_30

    :try_start_28
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw p0
.end method

.method public static -$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCurrentPictureHandleToOriginal:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_12

    goto/16 :goto_8c

    :cond_12
    :try_start_12
    invoke-virtual {v0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1b

    move-object p1, v0

    :cond_1b
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/PictureParameters;-><init>()V

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_47

    invoke-virtual {p2, v1, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    new-instance v3, Landroid/hardware/audio/effect/DefaultExtension;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    array-length v4, p2

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, v3, Landroid/hardware/audio/effect/DefaultExtension;->bytes:[B

    iget-object p2, v0, Landroid/hardware/tv/mediaquality/PictureParameters;->vendorPictureParameters:Landroid/os/ParcelableHolder;

    invoke-virtual {p2, v3}, Landroid/os/ParcelableHolder;->setParcelable(Landroid/os/Parcelable;)V

    :cond_47
    new-instance p2, Landroid/hardware/tv/mediaquality/PictureProfile;

    invoke-direct {p2}, Landroid/hardware/tv/mediaquality/PictureProfile;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/hardware/tv/mediaquality/PictureProfile;->pictureProfileId:J

    iput-object v0, p2, Landroid/hardware/tv/mediaquality/PictureProfile;->parameters:Landroid/hardware/tv/mediaquality/PictureParameters;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    check-cast p0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener$Stub$Proxy;

    iget-object p1, p0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object p1
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_5f} :catch_83

    :try_start_5f
    sget-object v0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_7e

    if-eqz p0, :cond_75

    :try_start_71
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_74} :catch_83

    return-void

    :cond_75
    :try_start_75
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p2, "Method onPictureProfileChanged is unimplemented."

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception p0

    :try_start_7f
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    const-string/jumbo p1, "MediaQualityService"

    const-string p2, "Failed to notify HAL on picture profile change."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    :goto_8c
    return-void
.end method

.method public static -$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSpChangedListener:Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    if-eqz p0, :cond_74

    :try_start_6
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameters;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/SoundParameters;-><init>()V

    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_33

    invoke-virtual {p2, v1, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    new-instance v1, Landroid/hardware/audio/effect/DefaultExtension;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, v1, Landroid/hardware/audio/effect/DefaultExtension;->bytes:[B

    iget-object p2, v0, Landroid/hardware/tv/mediaquality/SoundParameters;->vendorSoundParameters:Landroid/os/ParcelableHolder;

    invoke-virtual {p2, v1}, Landroid/os/ParcelableHolder;->setParcelable(Landroid/os/Parcelable;)V

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_6c

    :cond_33
    :goto_33
    new-instance p2, Landroid/hardware/tv/mediaquality/SoundProfile;

    invoke-direct {p2}, Landroid/hardware/tv/mediaquality/SoundProfile;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p2, Landroid/hardware/tv/mediaquality/SoundProfile;->soundProfileId:J

    iput-object v0, p2, Landroid/hardware/tv/mediaquality/SoundProfile;->parameters:Landroid/hardware/tv/mediaquality/SoundParameters;

    check-cast p0, Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener$Stub$Proxy;

    iget-object p1, p0, Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object p1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_48} :catch_31

    :try_start_48
    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1, p2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_67

    if-eqz p0, :cond_5e

    :try_start_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_31

    return-void

    :cond_5e
    :try_start_5e
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p2, "Method onSoundProfileChanged is unimplemented."

    invoke-direct {p0, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p0

    :try_start_68
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6c} :catch_31

    :goto_6c
    const-string/jumbo p1, "MediaQualityService"

    const-string p2, "Failed to notify HAL on sound profile change."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_74
    return-void
.end method

.method public static -$$Nest$mnotifyOnPictureProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V
    .registers 13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public static -$$Nest$mnotifyOnSoundProfileError(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/String;III)V
    .registers 13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V
    .registers 24

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    :goto_15
    if-ge v4, v7, :cond_d0

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    :try_start_1c
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    iget-object v13, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mPictureProfileCallbackPidUidMap:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_9a

    move/from16 v14, p7

    if-ne v13, v14, :cond_95

    :try_start_38
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_8f

    move/from16 v13, p6

    if-ne v0, v13, :cond_4f

    if-ne v1, v8, :cond_57

    :try_start_46
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    invoke-interface {v0, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileAdded(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    :cond_4f
    :goto_4f
    move-object/from16 v15, p5

    goto/16 :goto_cc

    :catch_53
    move-exception v0

    move-object/from16 v15, p5

    goto :goto_a1

    :cond_57
    if-ne v1, v12, :cond_63

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    invoke-interface {v0, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileUpdated(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    goto :goto_4f

    :cond_63
    if-ne v1, v11, :cond_6f

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    invoke-interface {v0, v2, v3}, Landroid/media/quality/IPictureProfileCallback;->onPictureProfileRemoved(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V

    goto :goto_4f

    :cond_6f
    if-ne v1, v10, :cond_7f

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v0, v2, v15}, Landroid/media/quality/IPictureProfileCallback;->onError(Ljava/lang/String;I)V

    goto :goto_4f

    :cond_7f
    if-ne v1, v9, :cond_4f

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IPictureProfileCallback;
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_87} :catch_53

    move-object/from16 v15, p5

    :try_start_89
    invoke-interface {v0, v2, v15}, Landroid/media/quality/IPictureProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_cc

    :catch_8d
    move-exception v0

    goto :goto_a1

    :catch_8f
    move-exception v0

    move-object/from16 v15, p5

    move/from16 v13, p6

    goto :goto_a1

    :cond_95
    move-object/from16 v15, p5

    move/from16 v13, p6

    goto :goto_cc

    :catch_9a
    move-exception v0

    move-object/from16 v15, p5

    move/from16 v13, p6

    move/from16 v14, p7

    :goto_a1
    const-string/jumbo v9, "MediaQualityService"

    if-ne v1, v8, :cond_ac

    const-string v8, "Failed to report added picture profile to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_ac
    if-ne v1, v12, :cond_b4

    const-string v8, "Failed to report updated picture profile to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_b4
    if-ne v1, v11, :cond_bc

    const-string v8, "Failed to report removed picture profile to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_bc
    if-ne v1, v10, :cond_c4

    const-string v8, "Failed to report picture profile error to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_c4
    const/4 v8, 0x5

    if-ne v1, v8, :cond_cc

    const-string v8, "Failed to report picture profile parameter capability change to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cc
    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    :cond_d0
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V
    .registers 24

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbacks:Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    :goto_15
    if-ge v4, v7, :cond_d0

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    :try_start_1c
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    iget-object v13, v5, Lcom/android/server/media/quality/MediaQualityService$UserState;->mSoundProfileCallbackPidUidMap:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_9a

    move/from16 v14, p7

    if-ne v13, v14, :cond_95

    :try_start_38
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_8f

    move/from16 v13, p6

    if-ne v0, v13, :cond_4f

    if-ne v1, v8, :cond_57

    :try_start_46
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    invoke-interface {v0, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileAdded(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    :cond_4f
    :goto_4f
    move-object/from16 v15, p5

    goto/16 :goto_cc

    :catch_53
    move-exception v0

    move-object/from16 v15, p5

    goto :goto_a1

    :cond_57
    if-ne v1, v12, :cond_63

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    invoke-interface {v0, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileUpdated(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    goto :goto_4f

    :cond_63
    if-ne v1, v11, :cond_6f

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    invoke-interface {v0, v2, v3}, Landroid/media/quality/ISoundProfileCallback;->onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    goto :goto_4f

    :cond_6f
    if-ne v1, v10, :cond_7f

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v0, v2, v15}, Landroid/media/quality/ISoundProfileCallback;->onError(Ljava/lang/String;I)V

    goto :goto_4f

    :cond_7f
    if-ne v1, v9, :cond_4f

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/ISoundProfileCallback;
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_87} :catch_53

    move-object/from16 v15, p5

    :try_start_89
    invoke-interface {v0, v2, v15}, Landroid/media/quality/ISoundProfileCallback;->onParameterCapabilitiesChanged(Ljava/lang/String;Ljava/util/List;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_cc

    :catch_8d
    move-exception v0

    goto :goto_a1

    :catch_8f
    move-exception v0

    move-object/from16 v15, p5

    move/from16 v13, p6

    goto :goto_a1

    :cond_95
    move-object/from16 v15, p5

    move/from16 v13, p6

    goto :goto_cc

    :catch_9a
    move-exception v0

    move-object/from16 v15, p5

    move/from16 v13, p6

    move/from16 v14, p7

    :goto_a1
    const-string/jumbo v9, "MediaQualityService"

    if-ne v1, v8, :cond_ac

    const-string v8, "Failed to report added sound profile to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_ac
    if-ne v1, v12, :cond_b4

    const-string v8, "Failed to report updated sound profile to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_b4
    if-ne v1, v11, :cond_bc

    const-string v8, "Failed to report removed sound profile to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_bc
    if-ne v1, v10, :cond_c4

    const-string v8, "Failed to report sound profile error to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_c4
    const/4 v8, 0x5

    if-ne v1, v8, :cond_cc

    const-string v8, "Failed to report sound profile parameter capability change to callback"

    invoke-static {v9, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cc
    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    :cond_d0
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
