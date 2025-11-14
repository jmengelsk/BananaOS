.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZI)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStayAwakeState$44(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setChargerConnectionSoundEnabledState$62(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUnlockSimOnBootState$92(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAdbState$29(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeButtonRotationState$95(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setExtendedCallInfoState$67(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerDialogCustomItemsStateLocal$145(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setChargingLEDState$34(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setToastShowPackageNameState$90(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAppBlockDownloadState$56(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumePanelEnabledState$97(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenOffOnHomeLongPressState$79(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setInputMethodRestrictionState$17(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setTorchOnVolumeButtonsState$91(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenWakeupOnPowerState$42(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setWifiConnectionMonitorState$46(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLcdBacklightState$71(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeKeyAppState$27(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setMobileDataState$39(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDeviceSpeakerEnabledState$65(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setForceSingleView$52(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLTESettingState$37(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setMobileDataRoamingState$38(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDisplayMirroringState$66(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_17
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setInfraredState$69(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setGearNotificationState$68(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHardKeyIntentState$137(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setMultiWindowState$76(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setToastEnabledState$87(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda12;->f$2:Z

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setToastGravityEnabledState$89(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
