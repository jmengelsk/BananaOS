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
    .locals 0

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda27;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$stopTcpDump$157()Ljava/lang/Integer;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLoadingLogoPath$13()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getMacAddress$117()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$powerOff$118()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$clearDexLoadingLogo$6()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startSmartView$51()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLockScreenHiddenItems$73()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getEthernetState$64()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$launchProkioskHomeActivity$153()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getZeroPageState$136()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getAppsButtonState$130()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getMobileNetworkType$106()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSystemSoundsSilent$86()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$removeLockScreen$54()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getHomeScreenMode$139()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getLockScreenHideOwnerInfo$151()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startProKioskMode$28()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getFavoriteAppsMaxCount$134()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getUsbConnectionType$122()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDeveloperOptionsHidden$35()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
