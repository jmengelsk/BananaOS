.class public final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field public final mConfigSignaturePackage:Ljava/lang/String;

.field public final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_14

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :catch_14
    :goto_14
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object p1, p2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/16 p2, 0xd

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_15

    const/4 p1, 0x0

    goto :goto_17

    :cond_15
    aget-object p1, p1, v0

    :goto_17
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final calculateFulfilledPolicies(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;I)I
    .registers 11

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    const/4 v3, 0x1

    :try_start_b
    iget-object v4, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v0, v1, p4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_16

    if-nez v0, :cond_16

    const/16 v0, 0x11

    goto :goto_17

    :catch_16
    :cond_16
    move v0, v3

    :goto_17
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    if-eqz v4, :cond_26

    goto :goto_28

    :cond_26
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_28
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_62

    :try_start_2e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p4, p1, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getOverlayableForTarget(ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object p1

    if-eqz p1, :cond_62

    iget-object p1, p1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    if-eqz p1, :cond_62

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    if-eqz v1, :cond_45

    goto :goto_47

    :cond_45
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_47
    invoke-static {p1, v1}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_53} :catch_62

    const/4 v4, 0x0

    :try_start_54
    iget-object v5, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, v1, p4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5a} :catch_5d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5a} :catch_62

    if-nez p1, :cond_5d

    goto :goto_5e

    :catch_5d
    :cond_5d
    move v3, v4

    :goto_5e
    if-eqz v3, :cond_62

    or-int/lit16 v0, v0, 0x80

    :catch_62
    :cond_62
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_78

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_6e
    iget-object p3, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p3, p0, p1, p4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_74} :catch_78

    if-nez p0, :cond_78

    or-int/lit16 v0, v0, 0x100

    :catch_78
    :cond_78
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p0

    if-eqz p0, :cond_81

    or-int/lit8 p0, v0, 0x4

    return p0

    :cond_81
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_8a

    or-int/lit8 p0, v0, 0x8

    return p0

    :cond_8a
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p0

    if-eqz p0, :cond_93

    or-int/lit8 p0, v0, 0x20

    return p0

    :cond_93
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p0

    if-eqz p0, :cond_9c

    or-int/lit8 p0, v0, 0x40

    return p0

    :cond_9c
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-nez p0, :cond_aa

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p0

    if-eqz p0, :cond_a9

    goto :goto_aa

    :cond_a9
    return v0

    :cond_aa
    :goto_aa
    or-int/lit8 p0, v0, 0x2

    return p0
.end method

.method public final getFabricatedOverlayInfos()Ljava/util/List;
    .registers 8

    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-nez v3, :cond_2a

    const-string/jumbo v3, "OverlayManager"

    const-string/jumbo v4, "idmap2d service is not ready for getFabricatedOverlayInfos()"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_27
    .catchall {:try_start_a .. :try_end_1d} :catchall_24

    :try_start_1d
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    goto :goto_76

    :catchall_24
    move-exception v0

    move v4, v1

    goto :goto_67

    :catch_27
    move-exception v3

    move v4, v1

    goto :goto_4e

    :cond_2a
    :try_start_2a
    invoke-interface {v3}, Landroid/os/IIdmap2;->acquireFabricatedOverlayIterator()I

    move-result v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_27
    .catchall {:try_start_2a .. :try_end_2e} :catchall_24

    :goto_2e
    :try_start_2e
    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->nextFabricatedOverlayInfos(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_3e
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3c

    goto :goto_2e

    :catchall_3c
    move-exception v0

    goto :goto_67

    :catch_3e
    move-exception v3

    goto :goto_4e

    :cond_40
    :try_start_40
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-eqz v3, :cond_49

    if-eq v4, v1, :cond_49

    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_22

    :catch_49
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_22

    monitor-exit p0

    goto :goto_66

    :goto_4e
    :try_start_4e
    const-string/jumbo v5, "OverlayManager"

    const-string/jumbo v6, "failed to get all fabricated overlays"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_3c

    if-eqz v2, :cond_65

    :try_start_59
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-eqz v3, :cond_62

    if-eq v4, v1, :cond_62

    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_62} :catch_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_22

    :catch_62
    :cond_62
    :try_start_62
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_22

    :cond_65
    monitor-exit p0

    :goto_66
    return-object v0

    :goto_67
    if-eqz v2, :cond_75

    :try_start_69
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-eqz v3, :cond_72

    if-eq v4, v1, :cond_72

    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_72} :catch_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_22

    :catch_72
    :cond_72
    :try_start_72
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    :cond_75
    throw v0

    :goto_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_22

    throw v0
.end method

.method public final removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remove idmap for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    const-string/jumbo v2, "OverlayManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_10
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(ILjava/lang/String;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "failed to remove idmap for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
