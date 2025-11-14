.class public final Lcom/android/server/pm/KnownPackages;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mRecentsPackage:Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mWearableSensingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iput-object p2, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    iput-object p14, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    iput-object p15, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .locals 1

    const-class v0, Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "com.android.companiondevicemanager"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object p2, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    filled-new-array {p2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const-string/jumbo p1, "android.app.role.BROWSER"

    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "android"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
