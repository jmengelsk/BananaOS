.class public abstract Lcom/android/server/soundtrigger_middleware/ConversionUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static aidl2hidlRecognitionModes(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1a

    or-int/lit8 p0, v0, 0x8

    return p0

    :cond_1a
    return v0
.end method

.method public static aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .registers 6

    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget v2, p0, Landroid/media/soundtrigger/SoundModel;->type:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    goto :goto_20

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown sound model type: "

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    move v4, v3

    :goto_20
    iput v4, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    iget p0, p0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    if-lez p0, :cond_45

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object p0

    goto :goto_4a

    :cond_45
    const/4 p0, 0x0

    invoke-static {p0, v3}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object p0

    :goto_4a
    iput-object p0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public static aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;
    .registers 15

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_93

    new-instance p0, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {p0}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    const/4 v10, 0x7

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v11

    int-to-byte v11, v11

    const/16 v12, 0x9

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v12

    int-to-byte v12, v12

    const/16 v13, 0xa

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    new-array v0, v0, [B

    const/4 v8, 0x0

    aput-byte v7, v0, v8

    aput-byte v9, v0, v5

    aput-byte v10, v0, v4

    aput-byte v11, v0, v3

    aput-byte v12, v0, v2

    aput-byte v6, v0, v1

    iput-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    return-object p0

    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal format for UUID: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    new-instance v2, Landroid/media/soundtrigger/Properties;

    invoke-direct {v2}, Landroid/media/soundtrigger/Properties;-><init>()V

    iget-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iput v3, v2, Landroid/media/soundtrigger/Properties;->version:I

    iget-object v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    if-eqz v4, :cond_b8

    array-length v4, v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_b8

    iget v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-short v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    iget-short v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iget-short v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/4 v15, 0x0

    aget-byte v4, v4, v15

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/16 v16, 0x1

    aget-byte v4, v4, v16

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/16 v17, 0x2

    aget-byte v4, v4, v17

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/4 v12, 0x3

    aget-byte v4, v4, v12

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    iget-object v4, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/4 v13, 0x4

    aget-byte v4, v4, v13

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    iget-object v3, v3, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    filled-new-array/range {v5 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxUsers:I

    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v3

    iput v3, v2, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    iget-boolean v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    iget v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iput v3, v2, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    iget-boolean v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    iget-boolean v3, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iput-boolean v3, v2, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    iget v1, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iput v1, v2, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    iput-object v1, v2, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    iget v0, v0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_af

    move/from16 v15, v16

    :cond_af
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b5

    or-int/lit8 v15, v15, 0x2

    :cond_b5
    iput v15, v2, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    return-object v2

    :cond_b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UUID.node must be of length 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger/RecognitionEvent;
    .registers 14

    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    new-instance v1, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v1}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v2, :cond_28

    if-eq v2, v3, :cond_26

    const/4 v6, 0x2

    if-eq v2, v6, :cond_29

    if-ne v2, v4, :cond_19

    move v6, v4

    goto :goto_29

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown recognition status: "

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    move v6, v3

    goto :goto_29

    :cond_28
    move v6, v5

    :cond_29
    :goto_29
    iput v6, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    if-eqz v2, :cond_40

    if-ne v2, v3, :cond_33

    move v2, v3

    goto :goto_41

    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown sound model type: "

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    move v2, v5

    :goto_41
    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    iget-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    iput-boolean v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-boolean v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    iput-boolean v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    new-instance v2, Landroid/media/audio/common/AudioConfig;

    invoke-direct {v2}, Landroid/media/audio/common/AudioConfig;-><init>()V

    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    iget v7, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    iget v8, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    iget v9, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    new-instance v10, Landroid/media/audio/common/AudioConfigBase;

    invoke-direct {v10}, Landroid/media/audio/common/AudioConfigBase;-><init>()V

    iput v7, v10, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-static {v8, v3}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;

    move-result-object v7

    iput-object v7, v10, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v9}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;

    move-result-object v7

    iput-object v7, v10, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    iput-object v10, v2, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    new-instance v7, Landroid/media/audio/common/AudioOffloadInfo;

    invoke-direct {v7}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    iget-object v8, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iget v10, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iget v11, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    new-instance v12, Landroid/media/audio/common/AudioConfigBase;

    invoke-direct {v12}, Landroid/media/audio/common/AudioConfigBase;-><init>()V

    iput v9, v12, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-static {v10, v5}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;

    move-result-object v9

    iput-object v9, v12, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v11}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;

    move-result-object v9

    iput-object v9, v12, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    iput-object v12, v7, Landroid/media/audio/common/AudioOffloadInfo;->base:Landroid/media/audio/common/AudioConfigBase;

    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    invoke-static {v9}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_stream_type_t_AudioStreamType(I)I

    move-result v9

    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->streamType:I

    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->bitRatePerSecond:I

    iget-wide v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iput-wide v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->durationUs:J

    iget-boolean v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iput-boolean v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->hasVideo:Z

    iget-boolean v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iput-boolean v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->isStreaming:Z

    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->bitWidth:I

    iget v9, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iput v9, v7, Landroid/media/audio/common/AudioOffloadInfo;->offloadBufferSize:I

    iget v8, v8, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    invoke-static {v8}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_usage_t_AudioUsage(I)I

    move-result v8

    iput v8, v7, Landroid/media/audio/common/AudioOffloadInfo;->usage:I

    iput-object v7, v2, Landroid/media/audio/common/AudioConfig;->offloadInfo:Landroid/media/audio/common/AudioOffloadInfo;

    iget-wide v6, v6, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    iput-wide v6, v2, Landroid/media/audio/common/AudioConfig;->frameCount:J

    iput-object v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    move v2, v5

    :goto_d2
    iget-object v6, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    array-length v7, v6

    if-ge v2, v7, :cond_e8

    iget-object v7, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    :cond_e8
    iget v0, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-ne v0, v4, :cond_ed

    goto :goto_ee

    :cond_ed
    move v3, v5

    :goto_ee
    iput-boolean v3, v1, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/lang/Object;

    check-cast p0, Landroid/os/HidlMemory;

    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object p0

    iput-object p0, v1, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    return-object v1
.end method

.method public static hidl2aidlRecognitionModes(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1a

    or-int/lit8 p0, v0, 0x8

    return p0

    :cond_1a
    return v0
.end method
