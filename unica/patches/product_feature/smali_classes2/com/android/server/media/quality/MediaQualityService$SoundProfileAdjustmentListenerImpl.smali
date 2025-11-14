.class public final Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object p1, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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

    if-eq p1, p0, :cond_25

    const/4 p0, 0x2

    if-eq p1, p0, :cond_21

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1d

    const/4 p0, 0x4

    if-eq p1, p0, :cond_19

    packed-switch p1, :pswitch_data_2a

    const/4 p0, 0x0

    return-object p0

    :pswitch_11  #0xffffff
    const-string/jumbo p0, "getInterfaceVersion"

    return-object p0

    :pswitch_15  #0xfffffe
    const-string/jumbo p0, "getInterfaceHash"

    return-object p0

    :cond_19
    const-string/jumbo p0, "requestSoundParameters"

    return-object p0

    :cond_1d
    const-string/jumbo p0, "onVendorParamCapabilityChanged"

    return-object p0

    :cond_21
    const-string/jumbo p0, "onParamCapabilityChanged"

    return-object p0

    :cond_25
    const-string/jumbo p0, "onSoundProfileAdjusted"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0xfffffe
        :pswitch_15  #00fffffe
        :pswitch_11  #00ffffff
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16

    sget-object v0, Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

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
    const/4 v0, 0x0

    if-ne p1, v1, :cond_20

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_20
    const v1, 0xfffffe

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2d

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_2d
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eq p1, v2, :cond_ce

    if-eq p1, v4, :cond_71

    if-eq p1, v1, :cond_62

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3d

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object p1

    if-eqz p1, :cond_61

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    :cond_61
    return v2

    :cond_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    sget-object p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    return v2

    :cond_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    sget-object p1, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    iget-object p2, v3, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p2, p2, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {p2, p0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length p0, p1

    move p2, v0

    :goto_a2
    if-ge p2, p0, :cond_c7

    aget-object p3, p1, p2

    iget-byte p4, p3, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {p4}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object p4

    iget-boolean v1, p3, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    iget-object v4, p3, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v4, :cond_b4

    move v4, v0

    goto :goto_b7

    :cond_b4
    iget v4, v4, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    add-int/2addr v4, v2

    :goto_b7
    iget-object p3, p3, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v4, p3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object p3

    new-instance v6, Landroid/media/quality/ParameterCapability;

    invoke-direct {v6, p4, v1, v4, p3}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v2

    goto :goto_a2

    :cond_c7
    const/4 v7, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifySoundProfileHelper(ILjava/lang/String;Landroid/media/quality/SoundProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return v2

    :cond_ce
    sget-object p1, Landroid/hardware/tv/mediaquality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/SoundProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-wide p2, p1, Landroid/hardware/tv/mediaquality/SoundProfile;->soundProfileId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/SoundProfile;->parameters:Landroid/hardware/tv/mediaquality/SoundParameters;

    iget-object p1, p1, Landroid/hardware/tv/mediaquality/SoundParameters;->soundParameters:[Landroid/hardware/tv/mediaquality/SoundParameter;

    sget-object p2, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    if-nez p1, :cond_ec

    :cond_e9
    move-object v10, v3

    goto/16 :goto_30c

    :cond_ec
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    array-length p2, p1

    move p3, v0

    :goto_f3
    if-ge p3, p2, :cond_e9

    aget-object p4, p1, p3

    invoke-virtual {p4, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10a

    const-string/jumbo v6, "surround_sound"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_10a
    const/4 v6, 0x5

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11e

    const-string/jumbo v6, "speakers"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11e
    const/16 v6, 0x8

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_133

    const-string/jumbo v6, "auto_volume_control"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_133
    const/16 v6, 0xa

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_148

    const-string/jumbo v6, "dts_drc"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_148
    invoke-virtual {p4, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_15b

    const-string/jumbo v6, "digital_output_delay_millis"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15b
    const/4 v6, 0x7

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16f

    const-string/jumbo v6, "earc"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16f
    invoke-virtual {p4, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_18e

    invoke-virtual {p4, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v8, "balance"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_18e
    invoke-virtual {p4, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v7, :cond_1ac

    invoke-virtual {p4, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v8, "bass"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1ac
    invoke-virtual {p4, v4}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v7, :cond_1ca

    invoke-virtual {p4, v4}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v8, "treble"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1ca
    const/4 v6, 0x6

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v8, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v7, :cond_1e9

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v8, "speakers_delay_millis"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1e9
    const/16 v6, 0x9

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v8, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-le v8, v7, :cond_209

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const-string/jumbo v8, "down_mix_mode"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_209
    const/16 v6, 0x11

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v8, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-le v8, v7, :cond_229

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const-string/jumbo v8, "sound_style"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_229
    const/16 v6, 0xe

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v8, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-le v8, v7, :cond_249

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const-string/jumbo v8, "digital_output_mode"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_249
    const/16 v6, 0xc

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v8, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-le v8, v7, :cond_269

    invoke-virtual {p4, v6}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    iget-object v6, p4, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const-string/jumbo v8, "dialogue_enhancer"

    invoke-virtual {v3, v8, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_269
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    if-eqz v6, :cond_277

    const-string/jumbo v6, "dts_virtual_x_tbhdx"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_277
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->limiter:Z

    if-eqz v6, :cond_285

    const-string/jumbo v6, "dts_virtual_x_limiter"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_285
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truSurroundX:Z

    if-eqz v6, :cond_293

    const-string/jumbo v6, "dts_virtual_x_tru_surround_x"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_293
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truVolumeHd:Z

    if-eqz v6, :cond_2a1

    const-string/jumbo v6, "dts_virtual_x_tru_volume_hd"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2a1
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->dialogClarity:Z

    if-eqz v6, :cond_2af

    const-string/jumbo v6, "dts_virtual_x_dialog_clarity"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2af
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->definition:Z

    if-eqz v6, :cond_2bd

    const-string/jumbo v6, "dts_virtual_x_definition"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2bd
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DtsVirtualX;->height:Z

    if-eqz v6, :cond_2cb

    const-string/jumbo v6, "dts_virtual_x_height"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2cb
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v6

    iget-byte v6, v6, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->soundMode:B

    if-le v6, v7, :cond_2df

    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v6

    iget-byte v6, v6, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->soundMode:B

    const-string/jumbo v7, "dolby_audio_processing_sound_mode"

    invoke-virtual {v3, v7, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2df
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->volumeLeveler:Z

    if-eqz v6, :cond_2ed

    const-string/jumbo v6, "dolby_audio_processing_volume_leveler"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2ed
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v6

    iget-boolean v6, v6, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->surroundVirtualizer:Z

    if-eqz v6, :cond_2fb

    const-string/jumbo v6, "dolby_audio_processing_surround_virtualizer"

    invoke-virtual {v3, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2fb
    invoke-virtual {p4}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object p4

    iget-boolean p4, p4, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->dolbyAtmos:Z

    if-eqz p4, :cond_309

    const-string/jumbo p4, "dolby_audio_processing_dolby_atmos"

    invoke-virtual {v3, p4, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_309
    add-int/2addr p3, v2

    goto/16 :goto_f3

    :goto_30c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0, p1, v10}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    return v2
.end method
