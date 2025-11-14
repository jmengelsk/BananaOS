.class public final Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object p1, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

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
    const-string/jumbo p0, "onStreamStatusChanged"

    return-object p0

    :cond_1
    const-string/jumbo p0, "requestPictureParameters"

    return-object p0

    :cond_2
    const-string/jumbo p0, "onVendorParamCapabilityChanged"

    return-object p0

    :cond_3
    const-string/jumbo p0, "onParamCapabilityChanged"

    return-object p0

    :cond_4
    const-string/jumbo p0, "onPictureProfileAdjusted"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v12, 0x27

    sget-object v13, Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;->DESCRIPTOR:Ljava/lang/String;

    const v14, 0xffffff

    const/4 v15, 0x1

    if-lt v1, v15, :cond_0

    if-gt v1, v14, :cond_0

    invoke-virtual {v2, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v3, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :cond_1
    const/4 v4, 0x0

    if-ne v1, v14, :cond_2

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :cond_2
    const v13, 0xfffffe

    if-ne v1, v13, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :cond_3
    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v15, :cond_b

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v14, :cond_5

    if-eq v1, v13, :cond_4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object v2, v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v3, v4, v1}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;JB)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v15

    :cond_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object v1, v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/quality/PictureProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    :cond_6
    return v15

    :cond_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    sget-object v0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/tv/mediaquality/VendorParamCapability;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    return v15

    :cond_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    sget-object v1, Landroid/hardware/tv/mediaquality/ParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/mediaquality/ParamCapability;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v7, v0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    iget-object v2, v7, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v2, v2, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v2, v0}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v0, v1

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_a

    aget-object v3, v1, v2

    iget-byte v5, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->name:B

    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getParameterName(B)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->isSupported:Z

    iget-object v8, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    if-nez v8, :cond_9

    move v8, v4

    goto :goto_1

    :cond_9
    iget v8, v8, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    add-int/2addr v8, v15

    :goto_1
    iget-object v3, v3, Landroid/hardware/tv/mediaquality/ParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-static {v8, v3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Landroid/media/quality/ParameterCapability;

    invoke-direct {v10, v5, v6, v8, v3}, Landroid/media/quality/ParameterCapability;-><init>(Ljava/lang/String;ZILandroid/os/Bundle;)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v15

    goto :goto_0

    :cond_a
    const/4 v11, 0x0

    const/4 v8, 0x5

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->notifyPictureProfileHelper(ILjava/lang/String;Landroid/media/quality/PictureProfile;Ljava/lang/Integer;Ljava/util/List;II)V

    return v15

    :cond_b
    sget-object v1, Landroid/hardware/tv/mediaquality/PictureProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/PictureProfile;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-wide v2, v1, Landroid/hardware/tv/mediaquality/PictureProfile;->pictureProfileId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget-object v0, v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    iget-object v1, v1, Landroid/hardware/tv/mediaquality/PictureProfile;->parameters:Landroid/hardware/tv/mediaquality/PictureParameters;

    iget-object v1, v1, Landroid/hardware/tv/mediaquality/PictureParameters;->pictureParameters:[Landroid/hardware/tv/mediaquality/PictureParameter;

    sget-object v2, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    array-length v3, v1

    move v7, v4

    :goto_2
    if-ge v7, v3, :cond_5c

    aget-object v8, v1, v7

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v9, v9, v20

    if-lez v9, :cond_c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-long v10, v9

    const-string/jumbo v9, "brightness"

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    :cond_c
    invoke-virtual {v8, v15}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_d

    invoke-virtual {v8, v15}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "contrast"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    invoke-virtual {v8, v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_e

    invoke-virtual {v8, v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "sharpness"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    invoke-virtual {v8, v5}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_f

    invoke-virtual {v8, v5}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "saturation"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_f
    invoke-virtual {v8, v14}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_10

    invoke-virtual {v8, v14}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "hue"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_10
    invoke-virtual {v8, v13}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_11

    invoke-virtual {v8, v13}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "color_tuner_brightness"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_12

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "color_tuner_saturation"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_13

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "color_tuner_hue"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_14

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "color_tuner_red_offset"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_14
    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_15

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "color_tuner_green_offset"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_15
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_16

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string/jumbo v11, "color_tuner_blue_offset"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_16
    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "color_tuner_red_gain"

    if-le v11, v10, :cond_17

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v5, "color_tuner_green_gain"

    if-le v11, v10, :cond_18

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v5, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v6, "color_tuner_blue_gain"

    if-le v11, v10, :cond_19

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v6, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_1a

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "noise_reduction"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1a
    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_1b

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "mpeg_noise_reduction"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1b
    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_1c

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "flesh_tone"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1c
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_1d

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "decontour"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1d
    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_1e

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "dynamic_luma_control"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    const/16 v9, 0x16

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_1f

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "color_temperature"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_1f
    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_20

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_20
    const/16 v4, 0x26

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_21

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_21
    invoke-virtual {v8, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_22

    invoke-virtual {v8, v12}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_22
    const/16 v4, 0x1a

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v5, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-le v5, v10, :cond_23

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v5, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    const-string/jumbo v6, "level_range"

    invoke-virtual {v2, v6, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_23
    const/16 v5, 0x20

    invoke-virtual {v8, v5}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v6, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    if-le v6, v10, :cond_24

    invoke-virtual {v8, v5}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v6, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const-string/jumbo v9, "hdmi_rgb_range"

    invoke-virtual {v2, v9, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_24
    const/16 v6, 0x21

    invoke-virtual {v8, v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    if-le v9, v10, :cond_25

    invoke-virtual {v8, v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v9, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    const-string/jumbo v11, "color_space"

    invoke-virtual {v2, v11, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_25
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_26

    invoke-virtual {v8, v9}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "panel_init_max_lumince_nits"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_26
    const/16 v4, 0x24

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_27

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    const-string/jumbo v4, "gamma"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_27
    const/16 v4, 0x28

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_28

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "color_temperature_red_offset"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_28
    const/16 v4, 0x29

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_29

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "color_temperature_green_offset"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_29
    const/16 v4, 0x2a

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_2a

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "color_temperature_blue_offset"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2a
    const/16 v4, 0x2e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_2b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    const-string/jumbo v4, "low_blue_light"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2b
    const/16 v4, 0x2f

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    if-le v11, v10, :cond_2c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    const-string/jumbo v4, "ld_mode"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2c
    const/16 v4, 0x30

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_2d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_red_gain"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2d
    const/16 v4, 0x31

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_2e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_green_gain"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2e
    const/16 v4, 0x32

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_2f

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_blue_gain"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_2f
    const/16 v4, 0x33

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_30

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_red_offset"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_30
    const/16 v4, 0x34

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_31

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_green_offset"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_31
    const/16 v4, 0x35

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_32

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_blue_offset"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_32
    const/16 v4, 0x36

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_33

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_hue"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_33
    const/16 v4, 0x37

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_34

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_saturation"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_34
    const/16 v4, 0x38

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_35

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "osd_contrast"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_35
    const/16 v4, 0x3a

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v10, :cond_36

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v11, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v4, "color_tuner_hue_red"

    invoke-virtual {v2, v4, v11}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_36
    const/16 v4, 0x3b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_37

    const/16 v4, 0x3b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_hue_green"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_37
    const/16 v4, 0x3c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_38

    const/16 v4, 0x3c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_hue_blue"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_38
    const/16 v4, 0x3d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_39

    const/16 v4, 0x3d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_hue_cyan"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_39
    const/16 v4, 0x3e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_3a

    const/16 v4, 0x3e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_hue_magenta"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_3a
    const/16 v4, 0x3f

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_3b

    const/16 v4, 0x3f

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_hue_yellow"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_3b
    const/16 v4, 0x40

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_3c

    const/16 v4, 0x40

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_hue_flesh"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_3c
    const/16 v4, 0x41

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_3d

    const/16 v4, 0x41

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_red"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_3d
    const/16 v4, 0x42

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_3e

    const/16 v4, 0x42

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_green"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_3e
    const/16 v4, 0x43

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_3f

    const/16 v4, 0x43

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_blue"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_3f
    const/16 v4, 0x44

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_40

    const/16 v4, 0x44

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_cyan"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_40
    const/16 v4, 0x45

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_41

    const/16 v4, 0x45

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_magenta"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_41
    const/16 v4, 0x46

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_42

    const/16 v4, 0x46

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_yellow"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_42
    const/16 v4, 0x47

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_43

    const/16 v4, 0x47

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_saturation_flesh"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_43
    const/16 v4, 0x48

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_44

    const/16 v4, 0x48

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_red"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_44
    const/16 v4, 0x49

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_45

    const/16 v4, 0x49

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_green"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_45
    const/16 v4, 0x4a

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_46

    const/16 v4, 0x4a

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_blue"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_46
    const/16 v4, 0x4b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_47

    const/16 v4, 0x4b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_cyan"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_47
    const/16 v4, 0x4c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_48

    const/16 v4, 0x4c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_magenta"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_48
    const/16 v4, 0x4d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_49

    const/16 v4, 0x4d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_yellow"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_49
    const/16 v4, 0x4e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_4a

    const/16 v4, 0x4e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v11, "color_tuner_luminance_flesh"

    invoke-virtual {v2, v11, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_4a
    const/16 v4, 0x50

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-le v4, v10, :cond_4b

    const/16 v4, 0x50

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const-string/jumbo v10, "picture_quality_event_type"

    invoke-virtual {v2, v10, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_4b
    const/16 v4, 0x13

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string/jumbo v4, "film_mode"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4c
    const/16 v4, 0x14

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "blue_stretch"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4d
    const/16 v4, 0x15

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string/jumbo v4, "color_tune"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4e
    const/16 v4, 0x17

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4f

    const-string/jumbo v4, "global_dimming"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4f
    const/16 v4, 0x18

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_50

    const-string/jumbo v4, "auto_picture_quality_enabled"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_50
    const/16 v4, 0x19

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_51

    const-string/jumbo v4, "auto_super_resolution_enabled"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_51
    const/16 v4, 0x1b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_52

    const-string/jumbo v4, "gamut_mapping"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_52
    const/16 v4, 0x1c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_53

    const-string/jumbo v4, "pc_mode"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_53
    const/16 v4, 0x1d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_54

    const-string/jumbo v4, "low_latency"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_54
    const/16 v4, 0x1e

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_55

    const-string/jumbo v4, "vrr"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_55
    const/16 v4, 0x1f

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_56

    const-string/jumbo v4, "cvrr"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_56
    const/16 v4, 0x23

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    const-string/jumbo v4, "panel_init_max_lumince_valid"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_57
    const/16 v4, 0x39

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_58

    const-string/jumbo v4, "color_tuner_switch"

    invoke-virtual {v2, v4, v15}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_58
    const/16 v4, 0x2b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, [I

    const-string/jumbo v10, "eleven_point_red"

    if-eqz v4, :cond_59

    const/16 v4, 0x2b

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, [I

    invoke-virtual {v2, v10, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_59
    const/16 v4, 0x2d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, [I

    if-eqz v4, :cond_5a

    const/16 v4, 0x2d

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, [I

    invoke-virtual {v2, v10, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_5a
    const/16 v4, 0x2c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, [I

    if-eqz v4, :cond_5b

    const/16 v4, 0x2c

    invoke-virtual {v8, v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    iget-object v4, v8, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v4, [I

    invoke-virtual {v2, v10, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_5b
    add-int/2addr v7, v15

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_5c
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    return v15
.end method
