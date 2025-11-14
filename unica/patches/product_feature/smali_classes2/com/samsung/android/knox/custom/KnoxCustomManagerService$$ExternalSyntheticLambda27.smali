.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    packed-switch v0, :pswitch_data_98

    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$stopTcpDump$157()Ljava/lang/Integer;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12  #0x12
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLoadingLogoPath$13()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19  #0x11
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getMacAddress$117()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x10
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$powerOff$118()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_27  #0xf
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$clearDexLoadingLogo$6()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2e  #0xe
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startSmartView$51()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_35  #0xd
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLockScreenHiddenItems$73()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3c  #0xc
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getEthernetState$64()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_43  #0xb
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$launchProkioskHomeActivity$153()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4a  #0xa
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getZeroPageState$136()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_51  #0x9
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getAppsButtonState$130()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_58  #0x8
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getMobileNetworkType$106()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5f  #0x7
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSystemSoundsSilent$86()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_66  #0x6
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$removeLockScreen$54()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6d  #0x5
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getHomeScreenMode$139()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_74  #0x4
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLockScreenHideOwnerInfo$151()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7b  #0x3
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startProKioskMode$28()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_82  #0x2
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getFavoriteAppsMaxCount$134()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_89  #0x1
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getUsbConnectionType$122()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_90  #0x0
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDeveloperOptionsHidden$35()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_90  #00000000
        :pswitch_89  #00000001
        :pswitch_82  #00000002
        :pswitch_7b  #00000003
        :pswitch_74  #00000004
        :pswitch_6d  #00000005
        :pswitch_66  #00000006
        :pswitch_5f  #00000007
        :pswitch_58  #00000008
        :pswitch_51  #00000009
        :pswitch_4a  #0000000a
        :pswitch_43  #0000000b
        :pswitch_3c  #0000000c
        :pswitch_35  #0000000d
        :pswitch_2e  #0000000e
        :pswitch_27  #0000000f
        :pswitch_20  #00000010
        :pswitch_19  #00000011
        :pswitch_12  #00000012
    .end packed-switch
.end method
