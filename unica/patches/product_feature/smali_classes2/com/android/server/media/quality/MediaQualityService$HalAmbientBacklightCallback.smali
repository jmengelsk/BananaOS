.class public final Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IMediaQualityCallback;


# instance fields
.field public mAmbientBacklightClientPackageName:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object p1, Landroid/hardware/tv/mediaquality/IMediaQualityCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public final getMaxTransactionId()I
    .registers 1

    const p0, 0xfffffe

    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_10

    packed-switch p1, :pswitch_data_14

    const/4 p0, 0x0

    return-object p0

    :pswitch_8  #0xffffff
    const-string/jumbo p0, "getInterfaceVersion"

    return-object p0

    :pswitch_c  #0xfffffe
    const-string/jumbo p0, "getInterfaceHash"

    return-object p0

    :cond_10
    const-string/jumbo p0, "notifyAmbientBacklightEvent"

    return-object p0

    :pswitch_data_14
    .packed-switch 0xfffffe
        :pswitch_c  #00fffffe
        :pswitch_8  #00ffffff
    .end packed-switch
.end method

.method public final handleAmbientBacklightEnabled(Z)V
    .registers 6

    new-instance v0, Landroid/media/quality/AmbientBacklightEvent;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x2

    :goto_7
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter p1

    :try_start_10
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_30

    :try_start_2a
    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v1, v0}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_32
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_1e

    :catchall_30
    move-exception p0

    goto :goto_3e

    :catch_32
    move-exception v1

    :try_start_33
    const-string/jumbo v2, "MediaQualityService"

    const-string v3, "Deliver ambient backlight enabled event failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :cond_3c
    monitor-exit p1

    return-void

    :goto_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_30

    throw p0
.end method

.method public final handleAmbientBacklightInterrupted()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    if-nez v1, :cond_15

    const-string/jumbo p0, "MediaQualityService"

    const-string v1, "Invalid package name in interrupted event"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_45

    :cond_15
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-nez p0, :cond_2d

    const-string/jumbo p0, "MediaQualityService"

    const-string v1, "Callback record not found for ambient backlight"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2d
    new-instance v1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_13

    :try_start_34
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p0, v1}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a
    .catchall {:try_start_34 .. :try_end_39} :catchall_13

    goto :goto_43

    :catch_3a
    move-exception p0

    :try_start_3b
    const-string/jumbo v1, "MediaQualityService"

    const-string v2, "Deliver ambient backlight interrupted event failed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_13

    throw p0
.end method

.method public final handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget v1, v1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "Invalid package name in metadata event"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;

    array-length v1, v0

    new-array v9, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_28
    array-length v4, v0

    if-ge v2, v4, :cond_32

    aget-object v4, v0, v2

    aput v1, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_32
    new-instance v2, Landroid/media/quality/AmbientBacklightMetadata;

    iget-byte v4, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->compressAlgorithm:B

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget-byte v5, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    iget v6, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    iget v7, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    iget v8, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    invoke-direct/range {v2 .. v9}, Landroid/media/quality/AmbientBacklightMetadata;-><init>(Ljava/lang/String;IIIII[I)V

    new-instance p1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v0, 0x3

    invoke-direct {p1, v0, v2}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter v1

    :try_start_4e
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-nez p0, :cond_69

    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "Callback record not found for ambient backlight metadata"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4e .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :cond_69
    :try_start_69
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p0, p1}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6e} :catch_6f
    .catchall {:try_start_69 .. :try_end_6e} :catchall_66

    goto :goto_79

    :catch_6f
    move-exception v0

    move-object p0, v0

    :try_start_71
    const-string/jumbo p1, "MediaQualityService"

    const-string v0, "Deliver ambient backlight metadata event failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_79
    monitor-exit v1

    return-void

    :goto_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_66

    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    sget-object v0, Landroid/hardware/tv/mediaquality/IMediaQualityCallback;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_16
    if-ne p1, v1, :cond_1f

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_1f
    const v0, 0xfffffe

    if-ne p1, v0, :cond_30

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    monitor-enter p0

    monitor-exit p0

    const-string/jumbo p0, "ac19fd80413145bec55462874afb34c24a47a12b"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_30
    if-eq p1, v2, :cond_37

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_37
    sget-object p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_45
    iget p3, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tag:I

    if-nez p3, :cond_61

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_assertTag(I)V

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_76

    :catchall_5b
    move-exception p0

    goto :goto_78

    :cond_5d
    invoke-virtual {p0, p3}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_76

    :cond_61
    if-ne p3, v2, :cond_6e

    invoke-virtual {p1, v2}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_assertTag(I)V

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V

    goto :goto_76

    :cond_6e
    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "Invalid event type in ambient backlight event"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    monitor-exit p2

    return v2

    :goto_78
    monitor-exit p2
    :try_end_79
    .catchall {:try_start_45 .. :try_end_79} :catchall_5b

    throw p0
.end method
