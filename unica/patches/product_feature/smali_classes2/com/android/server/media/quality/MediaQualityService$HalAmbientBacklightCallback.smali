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
    .locals 0

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
    .locals 0

    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    const p0, 0xfffffe

    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "getInterfaceVersion"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "getInterfaceHash"

    return-object p0

    :cond_0
    const-string/jumbo p0, "notifyAmbientBacklightEvent"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleAmbientBacklightEnabled(Z)V
    .locals 4

    new-instance v0, Landroid/media/quality/AmbientBacklightEvent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v1, v0}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "MediaQualityService"

    const-string v3, "Deliver ambient backlight enabled event failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleAmbientBacklightInterrupted()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo p0, "MediaQualityService"

    const-string v1, "Invalid package name in interrupted event"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-nez p0, :cond_1

    const-string/jumbo p0, "MediaQualityService"

    const-string v1, "Callback record not found for ambient backlight"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p0, v1}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo v1, "MediaQualityService"

    const-string v2, "Deliver ambient backlight interrupted event failed"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V
    .locals 10

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

    if-nez v0, :cond_0

    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "Invalid package name in metadata event"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;

    array-length v1, v0

    new-array v9, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    aput v1, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    if-nez p0, :cond_2

    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "Callback record not found for ambient backlight metadata"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p0, p1}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string/jumbo p1, "MediaQualityService"

    const-string v0, "Deliver ambient backlight metadata event failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    sget-object v0, Landroid/hardware/tv/mediaquality/IMediaQualityCallback;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    monitor-enter p0

    monitor-exit p0

    const-string/jumbo p0, "ac19fd80413145bec55462874afb34c24a47a12b"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_4
    sget-object p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p3, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_tag:I

    if-nez p3, :cond_6

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_assertTag(I)V

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_0

    :cond_6
    if-ne p3, v2, :cond_7

    invoke-virtual {p1, v2}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_assertTag(I)V

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->_value:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V

    goto :goto_0

    :cond_7
    const-string/jumbo p0, "MediaQualityService"

    const-string p1, "Invalid event type in ambient backlight event"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p2

    return v2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
