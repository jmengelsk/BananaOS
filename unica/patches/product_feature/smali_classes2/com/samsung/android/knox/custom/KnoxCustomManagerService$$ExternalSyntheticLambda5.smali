.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;II)V
    .registers 4

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v1, :pswitch_data_152

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setRecentLongPressMode$78(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12  #0x1c
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLockScreenOverrideMode$74(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1d  #0x1b
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setFlightModeState$49(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_28  #0x1a
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexHomeAlignment$8(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_33  #0x19
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexScreenTimeout$7(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3e  #0x18
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerDialogOptionMode$20(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_49  #0x17
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAutoCallPickupState$119(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_54  #0x16
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setWifiHotspotEnabledState$116(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5f  #0x15
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenTimeout$81(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6a  #0x14
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHomeScreenMode$138(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_75  #0x13
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHideNotificationMessages$15(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_80  #0x12
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setQuickPanelEditMode$108(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8b  #0x11
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$allowDexAutoOpenLastApp$10(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_96  #0x10
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerSavingMode$41(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a1  #0xf
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setQuickPanelButtons$107(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ac  #0xe
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getFavoriteApp$133(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b7  #0xd
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setPowerDialogItems$19(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c2  #0xc
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexHDMIAutoEnterState$11(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_cd  #0xb
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAppsButtonState$129(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d8  #0xa
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUsbConnectionType$121(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e3  #0x9
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeControlStream$96(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ee  #0x8
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getProcessName$152(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f9  #0x7
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setZeroPageState$135(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_104  #0x6
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setProKioskStatusBarIconsState$24(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10f  #0x5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$deleteHomeScreenPage$128(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11a  #0x4
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setProKioskStatusBarClockState$23(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_125  #0x3
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$clearAnimation$99(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_130  #0x2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setBrightness$50(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13b  #0x1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$removeFavoriteApp$132(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_146  #0x0
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda5;->f$2:I

    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setForceAutoShutDownState$123(II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_146  #00000000
        :pswitch_13b  #00000001
        :pswitch_130  #00000002
        :pswitch_125  #00000003
        :pswitch_11a  #00000004
        :pswitch_10f  #00000005
        :pswitch_104  #00000006
        :pswitch_f9  #00000007
        :pswitch_ee  #00000008
        :pswitch_e3  #00000009
        :pswitch_d8  #0000000a
        :pswitch_cd  #0000000b
        :pswitch_c2  #0000000c
        :pswitch_b7  #0000000d
        :pswitch_ac  #0000000e
        :pswitch_a1  #0000000f
        :pswitch_96  #00000010
        :pswitch_8b  #00000011
        :pswitch_80  #00000012
        :pswitch_75  #00000013
        :pswitch_6a  #00000014
        :pswitch_5f  #00000015
        :pswitch_54  #00000016
        :pswitch_49  #00000017
        :pswitch_3e  #00000018
        :pswitch_33  #00000019
        :pswitch_28  #0000001a
        :pswitch_1d  #0000001b
        :pswitch_12  #0000001c
    .end packed-switch
.end method
