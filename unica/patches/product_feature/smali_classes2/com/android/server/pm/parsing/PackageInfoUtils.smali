.class public abstract Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SYSTEM_DATA_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public static appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I
    .registers 5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/high16 v0, 0x40000

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_14

    const/high16 v2, 0x20000000

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    move-result v2

    if-eqz v2, :cond_20

    const v2, 0x8000

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/high16 v2, 0x10000

    goto :goto_2c

    :cond_2b
    move v2, v1

    :goto_2c
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    move-result v2

    if-eqz v2, :cond_36

    const/high16 v2, 0x20000

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    move-result v2

    if-eqz v2, :cond_41

    const/high16 v2, 0x4000000

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v2, 0x8

    goto :goto_4d

    :cond_4c
    move v2, v1

    :goto_4d
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x2

    goto :goto_57

    :cond_56
    move v2, v1

    :goto_57
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v2

    if-eqz v2, :cond_61

    const/16 v2, 0x4000

    goto :goto_62

    :cond_61
    move v2, v1

    :goto_62
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x4

    goto :goto_6c

    :cond_6b
    move v2, v1

    :goto_6c
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    move-result v2

    if-eqz v2, :cond_76

    const/16 v2, 0x20

    goto :goto_77

    :cond_76
    move v2, v1

    :goto_77
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_81

    const/16 v2, 0x40

    goto :goto_82

    :cond_81
    move v2, v1

    :goto_82
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    move-result v2

    if-eqz v2, :cond_8c

    const/high16 v2, 0x100000

    goto :goto_8d

    :cond_8c
    move v2, v1

    :goto_8d
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    move-result v2

    if-eqz v2, :cond_97

    const/high16 v2, 0x8000000

    goto :goto_98

    :cond_97
    move v2, v1

    :goto_98
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    move-result v2

    if-eqz v2, :cond_a2

    const/high16 v2, 0x400000

    goto :goto_a3

    :cond_a2
    move v2, v1

    :goto_a3
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    move-result v2

    if-eqz v2, :cond_ad

    const/16 v2, 0x100

    goto :goto_ae

    :cond_ad
    move v2, v1

    :goto_ae
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v2

    if-eqz v2, :cond_b8

    const/high16 v2, -0x80000000

    goto :goto_b9

    :cond_b8
    move v2, v1

    :goto_b9
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v2

    if-eqz v2, :cond_c3

    const/high16 v2, 0x10000000

    goto :goto_c4

    :cond_c3
    move v2, v1

    :goto_c4
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    move-result v2

    if-eqz v2, :cond_ce

    const/high16 v2, 0x2000000

    goto :goto_cf

    :cond_ce
    move v2, v1

    :goto_cf
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v2

    if-eqz v2, :cond_d9

    const/16 v2, 0x200

    goto :goto_da

    :cond_d9
    move v2, v1

    :goto_da
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v2

    if-eqz v2, :cond_e4

    const/16 v2, 0x400

    goto :goto_e5

    :cond_e4
    move v2, v1

    :goto_e5
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v2

    if-eqz v2, :cond_ef

    const/16 v2, 0x800

    goto :goto_f0

    :cond_ef
    move v2, v1

    :goto_f0
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v2

    if-eqz v2, :cond_fa

    const/high16 v2, 0x80000

    goto :goto_fb

    :cond_fa
    move v2, v1

    :goto_fb
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_105

    const/16 v2, 0x1000

    goto :goto_106

    :cond_105
    move v2, v1

    :goto_106
    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v2

    if-eqz v2, :cond_110

    const/16 v2, 0x2000

    goto :goto_111

    :cond_110
    move v2, v1

    :goto_111
    or-int/2addr v0, v2

    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    move-result p1

    if-eqz p1, :cond_120

    const/16 p1, 0x10

    goto :goto_121

    :cond_120
    move p1, v1

    :goto_121
    or-int/2addr p1, v0

    if-eqz p0, :cond_12f

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result p0

    if-eqz p0, :cond_12c

    const/16 v1, 0x80

    :cond_12c
    or-int p0, p1, v1

    return p0

    :cond_12f
    return p1
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .registers 4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x4000

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v2

    if-eqz v2, :cond_14

    const/high16 v2, 0x10000000

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v2

    if-eqz v2, :cond_20

    const v2, 0x8000

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x10

    goto :goto_2c

    :cond_2b
    move v2, v1

    :goto_2c
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v2

    if-eqz v2, :cond_36

    const/high16 v2, 0x800000

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    move-result v2

    if-eqz v2, :cond_41

    const/16 v2, 0x2000

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/high16 v2, 0x2000000

    goto :goto_4d

    :cond_4c
    move v2, v1

    :goto_4d
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_57

    const/16 v2, 0x20

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v2

    if-eqz v2, :cond_62

    const/16 v2, 0x40

    goto :goto_63

    :cond_62
    move v2, v1

    :goto_63
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v2

    if-eqz v2, :cond_6d

    const/16 v2, 0x100

    goto :goto_6e

    :cond_6d
    move v2, v1

    :goto_6e
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    move-result v2

    if-eqz v2, :cond_78

    const/high16 v2, 0x4000000

    goto :goto_79

    :cond_78
    move v2, v1

    :goto_79
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    move-result v2

    if-eqz v2, :cond_83

    const/high16 v2, 0x8000000

    goto :goto_84

    :cond_83
    move v2, v1

    :goto_84
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v2

    if-eqz v2, :cond_8e

    const/high16 v2, 0x20000000

    goto :goto_8f

    :cond_8e
    move v2, v1

    :goto_8f
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v2

    if-eqz v2, :cond_99

    const/high16 v2, 0x400000

    goto :goto_9a

    :cond_99
    move v2, v1

    :goto_9a
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    move-result v2

    if-eqz v2, :cond_a4

    const/high16 v2, 0x1000000

    goto :goto_a5

    :cond_a4
    move v2, v1

    :goto_a5
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v2

    if-eqz v2, :cond_ae

    const/4 v2, 0x2

    goto :goto_af

    :cond_ae
    move v2, v1

    :goto_af
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v2

    if-eqz v2, :cond_b9

    const/16 v2, 0x1000

    goto :goto_ba

    :cond_b9
    move v2, v1

    :goto_ba
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    move-result v2

    if-eqz v2, :cond_c4

    const/high16 v2, -0x80000000

    goto :goto_c5

    :cond_c4
    move v2, v1

    :goto_c5
    or-int/2addr v0, v2

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_cf

    const/high16 v2, 0x200000

    goto :goto_d0

    :cond_cf
    move v2, v1

    :goto_d0
    or-int/2addr v0, v2

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_da

    const/16 v2, 0x8

    goto :goto_db

    :cond_da
    move v2, v1

    :goto_db
    or-int/2addr v0, v2

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const/high16 v2, 0x20000

    goto :goto_e6

    :cond_e5
    move v2, v1

    :goto_e6
    or-int/2addr v0, v2

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const/high16 v2, 0x40000

    goto :goto_f1

    :cond_f0
    move v2, v1

    :goto_f1
    or-int/2addr v0, v2

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const/high16 v2, 0x80000

    goto :goto_fc

    :cond_fb
    move v2, v1

    :goto_fc
    or-int/2addr v0, v2

    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_106

    const/high16 v2, 0x40000000  # 2.0f

    goto :goto_107

    :cond_106
    move v2, v1

    :goto_107
    or-int/2addr v0, v2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v2

    if-eqz v2, :cond_110

    const/high16 v1, 0x100000

    :cond_110
    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_123

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_120

    or-int/lit16 p0, v0, 0x400

    return p0

    :cond_120
    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_123
    return v0
.end method

.method public static assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 5

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    return-void
.end method

.method public static assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getNonLocalizedLabel(Lcom/android/internal/pm/pkg/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/pm/pkg/component/ComponentParseUtils;->getIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static checkUseInstalledOrHidden(JLandroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/PackageUserStateInternal;)Z
    .registers 8

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p2, :cond_18

    iget-boolean v0, p2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_18

    goto :goto_31

    :cond_18
    invoke-static {p3, p0, p1}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result p3

    if-nez p3, :cond_32

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_31

    const-wide p2, 0x120402000L

    and-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    :goto_31
    return v1

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z
    .registers 8

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    if-eqz v0, :cond_1a

    goto :goto_31

    :cond_1a
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result p1

    if-nez p1, :cond_32

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_31

    const-wide p0, 0x120402000L

    and-long/2addr p0, p2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    :goto_31
    return v1

    :cond_32
    :goto_32
    const/4 p0, 0x1

    return p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1c

    :cond_4
    invoke-static {p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    :cond_b
    if-nez p5, :cond_17

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_1a

    :cond_17
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    :goto_1a
    if-nez p5, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    new-instance p0, Landroid/content/pm/ActivityInfo;

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPersistableMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMaxAspectRatio(F)V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setMinAspectRatio(F)V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRotationAnimation()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getColorMode()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getAttributionTags()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-eqz p2, :cond_de

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_da

    goto :goto_db

    :cond_da
    move-object v0, p2

    :goto_db
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_e0

    :cond_de
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_e0
    iput-object p5, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequireContentUriPermissionFromCaller()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/ActivityInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_5

    goto/16 :goto_1c1

    :cond_5
    invoke-static {p5, p3, p1, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-eqz v1, :cond_1c1

    const-wide/32 v1, 0x100000

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    if-nez v1, :cond_20

    goto/16 :goto_1c1

    :cond_20
    move-object v1, p0

    check-cast v1, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(JLandroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/PackageUserStateInternal;)V

    move-object p1, p0

    check-cast p1, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v3, "android"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    sget-object p0, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_e0

    :cond_4e
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p3

    if-nez p3, :cond_5e

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_e0

    :cond_5e
    if-nez p4, :cond_8b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_d1

    :cond_8b
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p4, -0x2

    sub-int/2addr p4, v2

    invoke-virtual {v3, v4, p4, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p4, -0x2

    sub-int/2addr p4, v2

    invoke-virtual {v3, p1, p4, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    :goto_d1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p0

    if-eqz p0, :cond_dc

    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_e0

    :cond_dc
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_e0
    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    iget-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean p1, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move p4, p3

    :goto_f3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_107

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    iget-object v2, v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_f3

    :cond_107
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10f

    move-object p0, v0

    goto :goto_117

    :cond_10f
    new-array p0, p3, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_117
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_120

    move-object p2, v0

    :cond_120
    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->optionalSharedLibraryInfos:Ljava/util/List;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCategoryOverride()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_12d

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_12d
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget p4, v1, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_146

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, return category without user\'s setting"

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_144
    move p1, p4

    goto :goto_187

    :cond_146
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14f
    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_167

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v2

    goto :goto_187

    :catchall_165
    move-exception p0

    goto :goto_1bf

    :cond_167
    if-eq v0, p1, :cond_16c

    monitor-exit v2

    move p1, v0

    goto :goto_187

    :cond_16c
    if-eq p4, p1, :cond_170

    monitor-exit v2

    goto :goto_144

    :cond_170
    iget-object p4, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_186

    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v2

    goto :goto_187

    :cond_186
    monitor-exit v2
    :try_end_187
    .catchall {:try_start_14f .. :try_end_187} :catchall_165

    :goto_187
    iput p1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result p1

    if-eqz p1, :cond_1a6

    const/16 p1, 0x80

    goto :goto_1a7

    :cond_1a6
    move p1, p3

    :goto_1a7
    or-int/2addr p1, p0

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-interface {p5}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b9

    const/16 p3, 0x20

    :cond_1b9
    or-int p1, p0, p3

    or-int/2addr p0, p1

    iput p0, v1, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object v1

    :goto_1bf
    :try_start_1bf
    monitor-exit v2
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_165

    throw p0

    :cond_1c1
    :goto_1c1
    return-object v0
.end method

.method public static generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserStateInternal;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    if-eqz p0, :cond_22

    invoke-static {p1, p2, p0, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(JLandroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/PackageUserStateInternal;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, p4}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    sget-boolean p0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz p0, :cond_1a

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    :goto_1c
    iput p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p1, p2, v0, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->updateApplicationInfo(JLandroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/PackageUserStateInternal;)V

    return-object v0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_a

    :cond_4
    invoke-static {p6, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_43

    move-object v2, v0

    goto :goto_47

    :cond_43
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_47
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_52

    move-object v2, v0

    goto :goto_56

    :cond_52
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    :goto_56
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_64

    move-object v2, v0

    goto :goto_68

    :cond_64
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v2

    :goto_68
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    sget-object p4, Lcom/android/server/pm/parsing/PackageInfoUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_114

    :cond_80
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_90

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p4

    if-nez p4, :cond_90

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto/16 :goto_114

    :cond_90
    if-nez p5, :cond_bd

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_105

    :cond_bd
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v6, v4, p4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v4, -0x2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v2, v4, p4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    :goto_105
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result p4

    if-eqz p4, :cond_110

    iget-object p4, v1, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_114

    :cond_110
    iget-object p4, v1, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    :goto_114
    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-interface {p6}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    invoke-static {p0, p6, p5}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Lcom/android/internal/pm/pkg/component/ParsedComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)Landroid/util/Pair;

    move-result-object p1

    iget-object p4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/CharSequence;

    iput-object p4, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    const-wide/16 p4, 0x80

    and-long p1, p2, p4

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_150

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    :cond_150
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15b

    goto :goto_15c

    :cond_15b
    move-object v0, p0

    :goto_15c
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Landroid/content/pm/PermissionGroupInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestDetailRes()I

    move-result v2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestRes()I

    move-result v3

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getBackgroundRequestDetailRes()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_3c

    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    :cond_3c
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    move-object v0, p0

    :goto_48
    iput-object v0, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsPackageItemInfoParsedComponent(Landroid/content/pm/PackageItemInfo;Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getRequestRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->requestRes:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getDescriptionRes()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getKnownCerts()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    const-wide/16 v2, 0x80

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_40

    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1

    :cond_40
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, p0

    :goto_4c
    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v1
.end method

.method public static generateProcessInfo(Ljava/util/Map;)Landroid/util/ArrayMap;
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/pm/ProcessInfo;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/util/ArraySet;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v7

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v8

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v9

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_51
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_50

    :cond_4
    invoke-static {p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_50

    :cond_b
    if-eqz p5, :cond_1e

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1e

    :cond_1a
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    goto :goto_4e

    :cond_1e
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_36

    const-string p5, "(null AppInfo)"

    goto :goto_38

    :cond_36
    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_38
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string/jumbo v1, "PackageParsing"

    invoke-static {v1, p5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    :goto_4e
    if-nez p5, :cond_51

    :goto_50
    return-object v0

    :cond_51
    new-instance p0, Landroid/content/pm/ProviderInfo;

    invoke-direct {p0}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    new-array p4, p3, [Landroid/os/PatternMatcher;

    invoke-interface {p2, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/PatternMatcher;

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object p2

    new-array p3, p3, [Landroid/content/pm/PathPermission;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/pm/PathPermission;

    iput-object p2, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const-wide/16 p2, 0x800

    and-long/2addr p2, v3

    const-wide/16 p6, 0x0

    cmp-long p2, p2, p6

    if-nez p2, :cond_c0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_c0
    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    cmp-long p2, p2, p6

    if-eqz p2, :cond_d5

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_d2

    goto :goto_d3

    :cond_d2
    move-object v0, p2

    :goto_d3
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    :cond_d5
    iput-object p5, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_1c

    :cond_4
    invoke-static {p7, p4, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageUserStateInternal;J)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1c

    :cond_b
    if-nez p5, :cond_17

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p6

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    goto :goto_1a

    :cond_17
    move-wide v3, p2

    move v6, p6

    move-object v7, p7

    :goto_1a
    if-nez p5, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    new-instance p0, Landroid/content/pm/ServiceInfo;

    invoke-direct {p0}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result p2

    iput-boolean p2, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getForegroundServiceType()I

    move-result p2

    iput p2, p0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    iput-object p5, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, 0x80

    and-long/2addr p2, v3

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_59

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_56

    goto :goto_57

    :cond_56
    move-object v0, p2

    :goto_57
    iput-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    :cond_59
    invoke-static {p0, p1, v7, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignFieldsComponentInfoParsedMainComponent(Landroid/content/pm/ComponentInfo;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    return-object p0
.end method

.method public static getDataDir(Lcom/android/server/pm/PackageSetting;I)Ljava/io/File;
    .registers 4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 p0, 0x0

    return-object p0

    :cond_28
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_3b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;
    .registers 5

    const-wide/16 v0, 0x40

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_b

    return-object p2

    :cond_b
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/content/pm/Signature;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object p0

    aget-object p0, p0, v0

    aput-object p0, p1, v0

    return-object p1

    :cond_1e
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    array-length p1, p1

    new-array p2, p1, [Landroid/content/pm/Signature;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    return-object p2
.end method

.method public static updateApplicationInfo(JLandroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/PackageUserStateInternal;)V
    .registers 12

    const-wide/16 v0, 0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_c
    const-wide/16 v4, 0x400

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-nez v0, :cond_17

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    :cond_17
    sget-boolean v0, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_1e

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_1e
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2a

    const/high16 v4, 0x200000

    goto :goto_2b

    :cond_2a
    move v4, v5

    :goto_2b
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_34

    const/high16 v6, 0x800000

    goto :goto_35

    :cond_34
    move v6, v5

    :goto_35
    or-int/2addr v4, v6

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v6

    if-eqz v6, :cond_3f

    const/high16 v6, 0x40000000  # 2.0f

    goto :goto_40

    :cond_3f
    move v6, v5

    :goto_40
    or-int/2addr v4, v6

    or-int/2addr v0, v4

    iput v0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_4f

    const/16 v4, 0x80

    goto :goto_50

    :cond_4f
    move v4, v5

    :goto_50
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v6

    if-eqz v6, :cond_59

    const/high16 v6, 0x10000

    goto :goto_5a

    :cond_59
    move v6, v5

    :goto_5a
    or-int/2addr v4, v6

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v6

    or-int/2addr v4, v6

    or-int/2addr v0, v4

    iput v0, p2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v4, 0x40

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    or-int/2addr v0, v4

    iput v0, p2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7c

    iput-boolean v4, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_a8

    :cond_7c
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_98

    const-wide/32 v6, 0x8000

    and-long/2addr v6, p0

    cmp-long v0, v6, v2

    if-nez v0, :cond_95

    const-wide/32 v6, 0x20000000

    and-long/2addr p0, v6

    cmp-long p0, p0, v2

    if-eqz p0, :cond_94

    goto :goto_95

    :cond_94
    move v4, v5

    :cond_95
    :goto_95
    iput-boolean v4, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_a8

    :cond_98
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_a6

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_a8

    :cond_a6
    iput-boolean v5, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_a8
    :goto_a8
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    iput p0, p2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iget p0, p2, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_bb

    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_bb
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_c4

    const-string p0, ":ephemeralapp:complete"

    goto :goto_c6

    :cond_c4
    const-string p0, ":complete"

    :goto_c6
    iput-object p0, p2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    if-eqz p0, :cond_ea

    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, p2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    :cond_ea
    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result p0

    iput-boolean p0, p2, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz p0, :cond_104

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    iget-object p0, p0, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mTitle:Ljava/lang/String;

    iput-object p0, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_104
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p0

    if-nez p0, :cond_112

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p0

    if-nez p0, :cond_112

    iput-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_112
    return-void
.end method
