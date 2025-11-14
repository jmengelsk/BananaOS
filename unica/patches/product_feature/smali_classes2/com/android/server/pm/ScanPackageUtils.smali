.class public abstract Lcom/android/server/pm/ScanPackageUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static apkHasCode(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/util/jar/StrictJarFile;

    invoke-direct {v2, p0, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_21
    .catchall {:try_start_2 .. :try_end_7} :catchall_1a

    :try_start_7
    const-string/jumbo p0, "classes.dex"

    invoke-virtual {v2, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_18
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    :try_start_11
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return v0

    :catchall_15
    move-exception p0

    move-object v1, v2

    goto :goto_1b

    :catch_18
    move-object v1, v2

    goto :goto_21

    :catchall_1a
    move-exception p0

    :goto_1b
    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    throw p0

    :catch_21
    :goto_21
    if-eqz v1, :cond_26

    :try_start_23
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return v0
.end method

.method public static applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;
    .registers 8

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    :cond_27
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_2c

    goto :goto_50

    :cond_2c
    iput-object p2, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v3, :cond_50

    check-cast v3, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    if-nez v0, :cond_4b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4b
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_53
    return-object v0
.end method

.method public static applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V
    .registers 9

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_13
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    array-length v0, v0

    if-lez v0, :cond_23

    invoke-interface {p0, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_23
    move v0, v2

    goto :goto_3d

    :cond_25
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move v0, p3

    :goto_3d
    const/high16 v3, 0x20000

    and-int/2addr v3, p1

    if-nez v3, :cond_45

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_45
    const/high16 v4, 0x4000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_4c

    move v4, v2

    goto :goto_4d

    :cond_4c
    move v4, v1

    :goto_4d
    invoke-interface {p0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v3, :cond_54

    move v3, v2

    goto :goto_55

    :cond_54
    move v3, v1

    :goto_55
    invoke-interface {p0, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_60

    move v4, v2

    goto :goto_61

    :cond_60
    move v4, v1

    :goto_61
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x80000

    and-int/2addr v4, p1

    if-eqz v4, :cond_6c

    move v4, v2

    goto :goto_6d

    :cond_6c
    move v4, v1

    :goto_6d
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_78

    move v4, v2

    goto :goto_79

    :cond_78
    move v4, v1

    :goto_79
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_84

    move v4, v2

    goto :goto_85

    :cond_84
    move v4, v1

    :goto_85
    invoke-interface {v3, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    const/high16 v4, 0x400000

    and-int/2addr p1, v4

    if-eqz p1, :cond_90

    move p1, v2

    goto :goto_91

    :cond_90
    move p1, v1

    :goto_91
    invoke-interface {v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    const-string/jumbo p1, "android"

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b1

    if-eqz p2, :cond_b2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result p1

    if-nez p1, :cond_b2

    :cond_b1
    move v1, v2

    :cond_b2
    invoke-interface {p0, v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-nez v0, :cond_be

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_be
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    return-void
.end method

.method public static assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_56

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_56

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "Can\'t install because "

    const-string v0, " "

    invoke-static {p2, p3, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'s process attribute "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (in package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, -0x7a

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_56
    :goto_56
    return-void
.end method

.method public static assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "receiver"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "provider"

    invoke-static {p0, v1, v0, v2}, Lcom/android/server/pm/ScanPackageUtils;->assertPackageProcesses(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_3d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t install because application tag\'s process attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is not included in the <processes> list"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x7a

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_68
    return-void
.end method

.method public static assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V
    .registers 4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_10c

    and-int/lit16 p1, p1, 0x2000

    if-nez p1, :cond_101

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_f6

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_eb

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d5

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ca

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_bf

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a9

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9e

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7d

    return-void

    :cond_7d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot be overlay targets"

    const/16 v0, -0x23

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_88
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare protected broadcasts"

    const/16 v0, -0x22

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_93
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare permissions"

    const/16 v0, -0x21

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_9e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare features"

    const/16 v0, -0x20

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_a9
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare permission groups"

    const/16 v0, -0x1f

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_b4
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare broadcast receivers"

    const/16 v0, -0x1e

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_bf
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare content providers"

    const/16 v0, -0x1d

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_ca
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare services"

    const/16 v0, -0x1c

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_d5
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Static shared libs cannot declare activities"

    const/16 v0, -0x1b

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_e0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Packages declaring static-shared libs cannot declare shared users"

    const/16 v0, -0x1a

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_eb
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Packages declaring static-shared libs cannot declare dynamic libs"

    const/16 v0, -0x19

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_f6
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Packages declaring static-shared libs cannot be renamed"

    const/16 v0, -0x18

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_101
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Packages declaring static-shared libs cannot be instant apps"

    const/16 v0, -0x17

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_10c
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Packages declaring static-shared libs must target O SDK or higher"

    const/16 v0, -0x16

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getVendorPartitionVersion()I
    .registers 2

    const-string/jumbo v0, "ro.vndk.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    :catch_12
    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x2710

    return v0

    :cond_1d
    const/16 v0, 0x1c

    return v0
.end method

.method public static scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;
    .registers 79
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v8, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    iget-object v9, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mUser:Landroid/os/UserHandle;

    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_LDU:Z

    const-string/jumbo v14, "PackageManager"

    if-eqz v0, :cond_6b

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    if-nez v11, :cond_26

    const-string v11, "/system/etc/ldu_blocklist.xml"

    invoke-static {v11}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v12, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    :cond_26
    sget-object v11, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_6b

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "This package ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] is forbidden to install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "This package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is forbidden to install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6b
    :goto_6b
    new-instance v0, Ljava/io/File;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/android/server/pm/ScanRequest;->mScanFlags:I

    and-int/lit16 v12, v11, 0x1000

    if-eqz v12, :cond_7c

    const/4 v12, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v12, 0x0

    :goto_7d
    const/high16 v15, 0x4000000

    and-int v22, v11, v15

    if-eqz v22, :cond_86

    const/16 v23, 0x1

    goto :goto_88

    :cond_86
    const/16 v23, 0x0

    :goto_88
    const/16 v24, 0x1

    iget-object v7, v1, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v12, :cond_9c

    if-eqz v7, :cond_9a

    iget-object v6, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v6, :cond_9f

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    move-result v6

    if-eqz v6, :cond_9f

    :cond_9a
    move/from16 v12, v24

    :cond_9c
    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_a3

    :cond_9f
    iget-object v6, v7, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iget-object v13, v7, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    :goto_a3
    const-string v15, " shared user changed from "

    const-string/jumbo v5, "Package "

    const-string v3, " to "

    const-string v4, "<nothing>"

    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v28, v8

    iget-object v8, v1, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_f7

    if-eq v4, v8, :cond_f7

    move/from16 v29, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v30, v13

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_d0

    iget-object v13, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_d2

    :cond_d0
    move-object/from16 v13, v17

    :goto_d2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_df

    iget-object v13, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_dc
    move-object/from16 v31, v6

    goto :goto_e2

    :cond_df
    move-object/from16 v13, v17

    goto :goto_dc

    :goto_e2
    const-string v6, "; replacing with new"

    invoke-static {v12, v13, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v12, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v12, 0x5

    invoke-static {v12, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/16 v6, 0x10

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v7

    move v6, v7

    const/4 v7, 0x0

    goto :goto_fe

    :cond_f7
    move-object/from16 v31, v6

    move/from16 v29, v12

    move-object/from16 v30, v13

    const/4 v6, 0x0

    :goto_fe
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11a

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_11b

    :cond_11a
    const/4 v12, 0x0

    :goto_11b
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_139

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    move/from16 v32, v6

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_13c

    :cond_139
    move/from16 v32, v6

    const/4 v13, 0x0

    :goto_13c
    iget-object v6, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 v33, v10

    iget-object v10, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v10, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    if-nez v7, :cond_156

    move/from16 v34, v24

    goto :goto_158

    :cond_156
    const/16 v34, 0x0

    :goto_158
    const-string v10, " package "

    const-string v36, " system"

    const-string/jumbo v2, "Update"

    move-object/from16 v37, v14

    const-string v14, ""

    move-object/from16 v38, v14

    iget-object v14, v1, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v39, v10

    iget-object v10, v1, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v34, :cond_40f

    and-int/lit16 v5, v11, 0x2000

    if-eqz v5, :cond_174

    move/from16 v53, v24

    goto :goto_176

    :cond_174
    const/16 v53, 0x0

    :goto_176
    const v5, 0x8000

    and-int/2addr v5, v11

    if-eqz v5, :cond_17f

    move/from16 v54, v24

    goto :goto_181

    :cond_17f
    const/16 v54, 0x0

    :goto_181
    const/high16 v5, 0x8000000

    and-int/2addr v5, v11

    if-eqz v5, :cond_18a

    move/from16 v5, v24

    :goto_188
    const/4 v7, 0x0

    goto :goto_18c

    :cond_18a
    const/4 v5, 0x0

    goto :goto_188

    :goto_18c
    invoke-static {v7, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v15

    invoke-static {v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v7

    move/from16 v40, v5

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v66, v2

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v9

    check-cast v17, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    move-object/from16 v67, v3

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v68, v4

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v70, v8

    move-object/from16 v69, v9

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v8

    move/from16 v71, v11

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v11

    move-object/from16 v72, v14

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v14

    move-object/from16 v73, v11

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v11

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v1

    move/from16 v20, v7

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v7

    move-object/from16 v41, v7

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v7

    move/from16 v19, v15

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v15

    if-eqz v10, :cond_25b

    move-object/from16 v17, v15

    new-instance v15, Lcom/android/server/pm/PackageSetting;

    move/from16 v42, v7

    const/4 v7, 0x0

    invoke-direct {v15, v10, v7}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    iput-object v5, v15, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    iput-object v2, v5, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v3, v5, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v4, v5, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    new-instance v2, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v2}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v2, v5, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v8, v5, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v12, v5, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v14, v5, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v11, v5, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v5, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v5, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v6, v5, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v7, v42

    iput v7, v5, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object/from16 v15, v17

    iput-object v15, v5, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v0, v19

    iput v0, v5, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    const/16 v3, 0x8

    move-object/from16 v6, p0

    move-object/from16 v1, v70

    :goto_257
    move-object/from16 v4, v72

    goto/16 :goto_3f7

    :cond_25b
    if-eqz v33, :cond_268

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move-object/from16 v18, v0

    move/from16 v0, v17

    :goto_265
    move-object/from16 v17, v15

    goto :goto_26c

    :cond_268
    move-object/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_265

    :goto_26c
    new-instance v15, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v42, v5

    move-object/from16 v21, v6

    move-object/from16 v6, p0

    iget-object v5, v6, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    move-object/from16 v16, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v42

    invoke-direct/range {v15 .. v21}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    iput-object v12, v15, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v14, v15, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v11, v15, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v15, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v15, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v3, v15, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v4, v15, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-wide v8, v15, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    if-nez v41, :cond_2b2

    const/4 v1, 0x0

    goto :goto_2be

    :cond_2b2
    new-instance v1, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v3, v41

    invoke-direct {v1, v3, v2}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    :goto_2be
    if-eqz v1, :cond_2c6

    invoke-virtual {v15, v1}, Lcom/android/server/pm/PackageSetting;->copyMimeGroups(Ljava/util/Map;)V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_2c6
    iput v7, v15, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v5, v15, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, v15, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object/from16 v1, v70

    if-eqz v70, :cond_2e2

    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v15, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :cond_2e2
    and-int/lit8 v2, v19, 0x1

    if-nez v2, :cond_34f

    move-object/from16 v2, v73

    const/4 v7, 0x0

    invoke-static {v2, v7, v7}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_34c

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2f6
    if-ge v5, v4, :cond_34c

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Landroid/content/pm/UserInfo;

    if-eqz v33, :cond_31c

    const/4 v8, -0x1

    if-ne v0, v8, :cond_314

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v9, "no_debugging_features"

    invoke-virtual {v2, v9, v8}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_314

    iget-boolean v8, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v8, :cond_31c

    :cond_314
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v8, :cond_319

    goto :goto_31c

    :cond_319
    const/16 v47, 0x0

    goto :goto_31e

    :cond_31c
    :goto_31c
    move/from16 v47, v24

    :goto_31e
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v42, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x1

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    move/from16 v41, v7

    move-object/from16 v40, v15

    invoke-virtual/range {v40 .. v65}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    goto :goto_2f6

    :cond_34c
    const/16 v3, 0x8

    goto :goto_36b

    :cond_34f
    move-object/from16 v2, v73

    if-eqz v40, :cond_34c

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    const/4 v3, 0x2

    move/from16 v4, v24

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v3, 0x8

    invoke-virtual {v15, v3, v4}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_36b
    if-eqz v1, :cond_375

    iget v0, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    move-object v5, v15

    goto/16 :goto_257

    :cond_375
    if-eqz v72, :cond_3f4

    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v4, v72

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz v5, :cond_392

    iget-object v7, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v8, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v7, v8, :cond_392

    new-instance v7, Landroid/content/pm/SigningDetails;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v7, v5}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v7, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_396

    :cond_392
    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v5, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_396
    iput-object v0, v15, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v0, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    iget-object v0, v15, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object v5, v4, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    const/4 v7, 0x0

    invoke-static {v2, v7, v7}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3f6

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_3b5
    if-ge v5, v2, :cond_3f6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/16 v24, 0x1

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v8

    invoke-virtual {v15, v7}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    if-eqz v8, :cond_3d4

    iget-object v8, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    goto :goto_3d5

    :cond_3d4
    const/4 v8, 0x0

    :goto_3d5
    invoke-virtual {v9, v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setDisabledComponents(Landroid/util/ArraySet;)V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v8

    invoke-virtual {v15, v7}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v7

    if-eqz v8, :cond_3ec

    iget-object v8, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    goto :goto_3ed

    :cond_3ec
    const/4 v8, 0x0

    :goto_3ed
    invoke-virtual {v7, v8}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setEnabledComponents(Landroid/util/ArraySet;)V

    invoke-virtual {v15}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_3b5

    :cond_3f4
    move-object/from16 v4, v72

    :cond_3f6
    move-object v5, v15

    :goto_3f7
    if-eqz v32, :cond_402

    const/4 v2, 0x1

    const/16 v7, 0x10

    invoke-virtual {v5, v7, v2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_402
    move-object/from16 v70, v1

    move-object/from16 v72, v4

    move-object/from16 v20, v10

    move-object/from16 v15, v37

    move-object/from16 v45, v39

    const/4 v2, 0x0

    goto/16 :goto_65a

    :cond_40f
    move-object/from16 v66, v6

    move-object v6, v1

    move-object v1, v8

    move-object/from16 v8, v66

    move-object/from16 v66, v2

    move-object/from16 v67, v3

    move-object/from16 v68, v4

    move-object/from16 v69, v9

    move/from16 v71, v11

    move-object v4, v14

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-instance v9, Lcom/android/server/pm/PackageSetting;

    const/4 v11, 0x0

    invoke-direct {v9, v7, v11}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    move-object/from16 v7, v69

    check-cast v7, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v7, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move/from16 v7, v71

    and-int/lit16 v11, v7, 0x400

    if-eqz v11, :cond_43a

    const/4 v11, 0x1

    goto :goto_43b

    :cond_43a
    const/4 v11, 0x0

    :goto_43b
    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v72, v4

    move-object/from16 v4, v69

    invoke-static {v9, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v18

    move/from16 v19, v11

    invoke-static {v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v11

    move/from16 v71, v7

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v4

    move-object/from16 v20, v10

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v10

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v6

    move/from16 v21, v11

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMimeGroups()Ljava/util/Set;

    move-result-object v11

    move-object/from16 v32, v6

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v6

    move-object/from16 v40, v13

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRestrictUpdateHash()[B

    move-result-object v13

    move-object/from16 v41, v10

    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object/from16 v42, v4

    iget-object v4, v9, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    if-eqz v1, :cond_4ca

    move-object/from16 v43, v12

    move-object/from16 v12, v68

    invoke-static {v12, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_4c2

    invoke-static {v5, v10, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v12, :cond_498

    iget-object v4, v12, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_49a

    :cond_498
    move-object/from16 v4, v17

    :goto_49a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v67

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v12, 0x5

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Updating application package "

    const-string v2, " failed"

    invoke-static {v1, v10, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x18

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4c2
    move-object/from16 v5, v67

    iget v15, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v9, v15}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    goto :goto_4d4

    :cond_4ca
    move-object/from16 v43, v12

    move-object/from16 v5, v67

    move-object/from16 v12, v68

    const/4 v15, -0x1

    invoke-virtual {v9, v15}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)V

    :goto_4d4
    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5b8

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v15

    move-object/from16 v68, v12

    new-instance v12, Ljava/lang/StringBuilder;

    move/from16 v17, v15

    move-object/from16 v15, v66

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v17, :cond_4f0

    move-object/from16 v15, v36

    :goto_4ed
    move-object/from16 v70, v1

    goto :goto_4f3

    :cond_4f0
    move-object/from16 v15, v38

    goto :goto_4ed

    :goto_4f3
    const-string v1, " code path from "

    move-object/from16 v44, v13

    move-object/from16 v13, v39

    invoke-static {v12, v15, v13, v10, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Retain data and using new"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v37

    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v17, :cond_5ab

    const/4 v1, 0x1

    and-int/lit8 v12, v18, 0x1

    if-eqz v12, :cond_5a1

    if-nez v72, :cond_5a1

    const/4 v12, 0x0

    invoke-static {v7, v12, v12}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5a1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_532
    if-ge v1, v12, :cond_5a1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v1, v1, 0x1

    move/from16 v37, v1

    move-object/from16 v1, v17

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-nez v17, :cond_552

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v17

    if-nez v17, :cond_552

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v17

    if-eqz v17, :cond_557

    :cond_552
    move-object/from16 v17, v7

    move/from16 v39, v12

    goto :goto_571

    :cond_557
    move-object/from16 v17, v7

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    move/from16 v39, v12

    move/from16 v12, v24

    invoke-virtual {v9, v7, v12}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v1}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    move-object/from16 v7, v17

    move/from16 v1, v37

    move/from16 v12, v39

    :goto_56e
    const/16 v24, 0x1

    goto :goto_532

    :goto_571
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "User "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v1, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v45, v13

    const-string v13, " is Premium container. do not set install flag. / "

    move-object/from16 v67, v5

    const-string v5, " / installed = "

    invoke-static {v12, v13, v10, v5, v7}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v17

    move/from16 v1, v37

    move/from16 v12, v39

    move-object/from16 v13, v45

    move-object/from16 v5, v67

    goto :goto_56e

    :cond_5a1
    move-object/from16 v67, v5

    move-object/from16 v45, v13

    iput-object v14, v9, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_5af

    :cond_5ab
    move-object/from16 v67, v5

    move-object/from16 v45, v13

    :goto_5af
    invoke-virtual {v9, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    if-eqz v19, :cond_5c4

    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    goto :goto_5c4

    :cond_5b8
    move-object/from16 v70, v1

    move-object/from16 v67, v5

    move-object/from16 v68, v12

    move-object/from16 v44, v13

    move-object/from16 v15, v37

    move-object/from16 v45, v39

    :cond_5c4
    :goto_5c4
    iput-object v3, v9, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v9, v11}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    iput-object v8, v9, Lcom/android/server/pm/PackageSetting;->mDomainSetId:Ljava/util/UUID;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput v6, v9, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object/from16 v0, v44

    iput-object v0, v9, Lcom/android/server/pm/PackageSetting;->mRestrictUpdateHash:[B

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    if-eqz v43, :cond_606

    if-eqz v42, :cond_606

    if-eqz v41, :cond_606

    move-object/from16 v12, v43

    array-length v0, v12

    move-object/from16 v1, v42

    array-length v2, v1

    if-ne v0, v2, :cond_606

    array-length v0, v12

    move-object/from16 v2, v41

    array-length v3, v2

    if-ne v0, v3, :cond_606

    iput-object v12, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_616

    :cond_606
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibraries:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->usesSdkLibrariesOptional:[Z

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_616
    if-eqz v40, :cond_62e

    if-eqz v32, :cond_62e

    move-object/from16 v13, v40

    array-length v0, v13

    move-object/from16 v1, v32

    array-length v2, v1

    if-ne v0, v2, :cond_62e

    iput-object v13, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v1, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v2, 0x0

    goto :goto_639

    :cond_62e
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v2, v9, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_639
    iget v0, v9, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/lit8 v0, v0, -0x2

    const/16 v24, 0x1

    and-int/lit8 v1, v18, 0x1

    or-int/2addr v0, v1

    iput v0, v9, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v0, v9, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_652

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x200

    goto :goto_656

    :cond_652
    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x201

    :goto_656
    invoke-virtual {v9, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    move-object v5, v9

    :goto_65a
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    and-int/lit8 v1, v71, 0x4

    if-eqz v1, :cond_664

    const/4 v3, 0x1

    :goto_661
    const/16 v27, 0x10

    goto :goto_666

    :cond_664
    const/4 v3, 0x0

    goto :goto_661

    :goto_666
    and-int/lit8 v4, v71, 0x10

    if-eqz v4, :cond_66c

    const/4 v6, 0x1

    goto :goto_66d

    :cond_66c
    const/4 v6, 0x0

    :goto_66d
    if-eqz v22, :cond_678

    :cond_66f
    const/4 v13, 0x0

    move-object/from16 v14, p0

    move-object/from16 v12, v33

    move-object/from16 v11, v38

    goto/16 :goto_874

    :cond_678
    const-string/jumbo v7, "PersonaServiceHelper"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_67f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v11, v12}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0
    :try_end_689
    .catch Ljava/lang/NullPointerException; {:try_start_67f .. :try_end_689} :catch_690
    .catchall {:try_start_67f .. :try_end_689} :catchall_68d

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_69b

    :catchall_68d
    move-exception v0

    goto/16 :goto_e04

    :catch_690
    move-exception v0

    :try_start_691
    const-string/jumbo v10, "user manager exception "

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_697
    .catchall {:try_start_691 .. :try_end_697} :catchall_68d

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v2

    :goto_69b
    if-eqz v0, :cond_66f

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_66f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    move-object/from16 v14, p0

    iget-object v10, v14, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v9, :cond_6cc

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v9

    if-nez v9, :cond_6cc

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_6c6

    goto :goto_6cc

    :cond_6c6
    move-object/from16 v12, v33

    move-object/from16 v11, v38

    goto/16 :goto_7fa

    :cond_6cc
    :goto_6cc
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v9, v12, v8}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v9

    if-eqz v9, :cond_6f2

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v11, v38

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is installed in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v12, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_6f5

    :cond_6f2
    move-object/from16 v11, v38

    const/4 v9, 0x0

    :goto_6f5
    iget-object v12, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13, v8}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v12

    if-eqz v12, :cond_718

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v9, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is uninstalled in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v12, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v9, 0x1

    :cond_718
    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_746

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    move-result v12

    if-eqz v12, :cond_746

    const-string/jumbo v12, "android"

    invoke-interface/range {v69 .. v69}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_746

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is (system overlay package) skip trim in "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v12, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v9, 0x1

    :cond_746
    if-eqz v9, :cond_74c

    move-object/from16 v38, v11

    goto/16 :goto_6a1

    :cond_74c
    if-eqz v33, :cond_79d

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v12, v33

    invoke-virtual {v9, v12}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79f

    if-eqz v10, :cond_777

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_777

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "if already installed, then don\'t trim it\n set true for persona "

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v2, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto/16 :goto_7fa

    :cond_777
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "in trim for persona "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " setting false "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v2, v9, v7}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_7fa

    :cond_79d
    move-object/from16 v12, v33

    :cond_79f
    if-eqz v3, :cond_7b7

    if-nez v12, :cond_7b7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "New installation & target user = null or all\n set false for persona "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v9, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_7fa

    :cond_7b7
    if-eqz v6, :cond_7fa

    if-eqz v12, :cond_7c9

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v12}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c9

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-eqz v2, :cond_7fa

    :cond_7c9
    if-nez v10, :cond_7de

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "If no info about old packages trim it\n set false for persona "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v9, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_7fa

    :cond_7de
    const/4 v13, 0x0

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_7fa

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "if already not installed, then trim it\n set false for persona "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v9, v7}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_7fa
    :goto_7fa
    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_818

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_818

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v2}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v2

    if-eqz v2, :cond_818

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x1

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_818
    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_838

    if-eqz v10, :cond_838

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_838

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10, v2}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v2

    if-eqz v2, :cond_838

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x1

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :cond_838
    if-eqz v10, :cond_853

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_853

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_855

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_853

    goto :goto_855

    :cond_853
    const/4 v13, 0x0

    goto :goto_86d

    :cond_855
    :goto_855
    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_85f

    const/4 v2, 0x0

    goto :goto_865

    :cond_85f
    iget-object v10, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v2, v10, v9}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    :goto_865
    if-eqz v2, :cond_853

    iget v2, v8, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v5, v2, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    :goto_86d
    move-object/from16 v38, v11

    move-object/from16 v33, v12

    const/4 v2, 0x0

    goto/16 :goto_6a1

    :goto_874
    if-eqz v34, :cond_8a3

    if-eqz v20, :cond_8a3

    move-object/from16 v2, v20

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    move-object/from16 v9, v69

    invoke-interface {v9, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "New package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " renamed to replace old package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_8a5

    :cond_8a3
    move-object/from16 v9, v69

    :goto_8a5
    if-nez v12, :cond_8a9

    move v7, v13

    goto :goto_8ad

    :cond_8a9
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    :goto_8ad
    if-nez v34, :cond_8c6

    move/from16 v2, v71

    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_8b7

    const/4 v0, 0x1

    goto :goto_8b8

    :cond_8b7
    move v0, v13

    :goto_8b8
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_8c0

    const/4 v3, 0x1

    :goto_8bd
    move-object/from16 v6, p1

    goto :goto_8c2

    :cond_8c0
    move v3, v13

    goto :goto_8bd

    :goto_8c2
    invoke-static {v6, v5, v7, v0, v3}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    goto :goto_8ca

    :cond_8c6
    move-object/from16 v6, p1

    move/from16 v2, v71

    :goto_8ca
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    if-nez v72, :cond_8d6

    if-eqz v1, :cond_8de

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_8de

    :cond_8d6
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object v3, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_8de
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v3

    move-object/from16 v6, v70

    invoke-static {v5, v9, v6, v3}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->seInfo:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_9d0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_910

    goto/16 :goto_9d0

    :cond_910
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    const/16 v24, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_91c
    if-ltz v6, :cond_940

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v10, :cond_93b

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v8, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_93b
    const/16 v25, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_91c

    :cond_940
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    const/16 v24, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_94c
    if-ltz v6, :cond_970

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v10, :cond_96b

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v8, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_96b
    const/16 v25, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_94c

    :cond_970
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    const/16 v24, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_97c
    if-ltz v6, :cond_9a0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v10, :cond_99b

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v8, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_99b
    const/16 v25, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_97c

    :cond_9a0
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    const/16 v24, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_9ac
    if-ltz v6, :cond_9d0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v10, :cond_9cb

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v8, v10}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setEnabled(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_9cb
    const/16 v25, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_9ac

    :cond_9d0
    :goto_9d0
    const/16 v25, -0x1

    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string v3, "-"

    iget-object v6, v14, Lcom/android/server/pm/ScanRequest;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e0

    const/4 v12, 0x0

    goto :goto_9e1

    :cond_9e0
    move-object v12, v6

    :goto_9e1
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10

    iget-boolean v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    move/from16 v26, v13

    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v6, "app-lib"

    invoke-direct {v13, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-boolean v3, v14, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    if-nez v23, :cond_af8

    if-nez v1, :cond_a94

    if-eqz v29, :cond_a6f

    move v6, v1

    move/from16 v71, v2

    const-wide/32 v1, 0x40000

    const-string/jumbo v8, "derivePackageAbi"

    invoke-static {v1, v2, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-wide/from16 v17, v1

    move/from16 p1, v3

    move-object/from16 v38, v11

    move-object/from16 v8, v28

    move-object/from16 v3, v45

    move-object/from16 v2, v68

    move/from16 v1, v71

    const/16 v35, 0x8

    move v11, v0

    :try_start_a1a
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/PackageAbiHelperImpl;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    move/from16 v19, v4

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    move/from16 v20, v6

    iget-object v6, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v9, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v6

    iget-object v4, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_a38
    .catchall {:try_start_a1a .. :try_end_a38} :catchall_a6a

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    move-object v0, v9

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_add

    if-nez v11, :cond_add

    if-nez v0, :cond_add

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v9, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v6

    iget-object v0, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v6, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iput-object v4, v5, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v8, v9, v10, v11, v13}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto/16 :goto_add

    :catchall_a6a
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_a6f
    move/from16 v20, v1

    move v1, v2

    move/from16 p1, v3

    move/from16 v19, v4

    move-object/from16 v38, v11

    move-object/from16 v8, v28

    move-object/from16 v6, v31

    move-object/from16 v3, v45

    move-object/from16 v2, v68

    const/16 v35, 0x8

    move v11, v0

    invoke-interface {v9, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    move-object/from16 v4, v30

    invoke-interface {v0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v8, v9, v10, v11, v13}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_add

    :cond_a94
    move/from16 v20, v1

    move v1, v2

    move/from16 p1, v3

    move/from16 v19, v4

    move-object/from16 v38, v11

    move-object/from16 v8, v28

    move-object/from16 v3, v45

    move-object/from16 v2, v68

    const/16 v35, 0x8

    move v11, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_ab6

    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-interface {v9, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_ad6

    :cond_ab6
    invoke-static {v9}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_ad6

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/PackageAbiHelperImpl;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    iget-object v6, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v9, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v6

    iget-object v4, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    :cond_ad6
    :goto_ad6
    invoke-virtual {v8, v9, v10, v11, v13}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    :cond_add
    :goto_add
    if-eqz p1, :cond_af5

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_aee

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v26

    goto :goto_af2

    :cond_aee
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v26

    :goto_af2
    invoke-interface {v9, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_af5
    :goto_af5
    const/16 v24, 0x1

    goto :goto_b0a

    :cond_af8
    move/from16 v20, v1

    move v1, v2

    move/from16 p1, v3

    move/from16 v19, v4

    move-object/from16 v38, v11

    move-object/from16 v8, v28

    move-object/from16 v3, v45

    move-object/from16 v2, v68

    const/16 v35, 0x8

    goto :goto_af5

    :goto_b0a
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_b27

    if-eqz v20, :cond_b27

    if-nez v12, :cond_b27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring persisted ABI override for package "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b27
    move-object v0, v9

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v12, v5, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v11

    const-wide/16 v17, 0x4000

    cmp-long v0, v11, v17

    if-nez v0, :cond_b58

    const/4 v13, 0x1

    goto :goto_b5a

    :cond_b58
    move/from16 v13, v26

    :goto_b5a
    const/16 v0, 0x40

    if-eqz v13, :cond_b6b

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v4

    if-lez v4, :cond_b71

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPageSizeAppCompatFlags()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)V

    :cond_b6b
    move/from16 v71, v1

    move/from16 v17, v10

    goto/16 :goto_be3

    :cond_b71
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_b6b

    if-nez v10, :cond_b6b

    if-nez v23, :cond_b6b

    if-nez p1, :cond_b6b

    iget-object v4, v5, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isNativeLibraryRootRequiresIsa()Z

    move-result v6

    iget-object v11, v5, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    :try_start_b84
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPageSizeAppCompatFlags()I

    move-result v12

    if-ne v12, v0, :cond_b8c

    const/4 v13, 0x1

    goto :goto_b8e

    :cond_b8c
    move/from16 v13, v26

    :goto_b8e
    invoke-static {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v0
    :try_end_b96
    .catch Ljava/io/IOException; {:try_start_b84 .. :try_end_b96} :catch_bae

    move/from16 v71, v1

    :try_start_b98
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v1
    :try_end_b9c
    .catch Ljava/io/IOException; {:try_start_b98 .. :try_end_b9c} :catch_bab

    move/from16 v17, v10

    :try_start_b9e
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v10

    invoke-static {v12, v0, v1, v10, v13}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    invoke-static {v0, v4, v6, v11}, Lcom/android/internal/content/NativeLibraryHelper;->checkAlignmentForCompatMode(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v6
    :try_end_baa
    .catch Ljava/io/IOException; {:try_start_b9e .. :try_end_baa} :catch_bb1

    goto :goto_bc8

    :catch_bab
    :goto_bab
    move/from16 v17, v10

    goto :goto_bb1

    :catch_bae
    move/from16 v71, v1

    goto :goto_bab

    :catch_bb1
    :goto_bb1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to check alignment of package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v25

    :goto_bc8
    if-ltz v6, :cond_bce

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)V

    goto :goto_be3

    :cond_bce
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occurred while checking alignment of package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be3
    if-nez v19, :cond_bf2

    if-eqz v2, :cond_bf2

    iget-object v0, v2, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v8, v0, v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v9, v0}, Lcom/android/server/pm/ScanPackageUtils;->applyAdjustedAbiToSharedUser(Lcom/android/server/pm/SharedUserSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)Ljava/util/List;

    :cond_bf2
    if-eqz p2, :cond_c03

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "android.permission.FACTORY_TEST"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c03

    const/4 v13, 0x1

    goto :goto_c05

    :cond_c03
    move/from16 v13, v26

    :goto_c05
    invoke-interface {v9, v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v17, :cond_c41

    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    const/4 v2, 0x1

    if-ne v2, v1, :cond_c12

    goto :goto_c3c

    :cond_c12
    iget-object v1, v0, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    iget-object v6, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    iget-object v12, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v41, v0

    move-object/from16 v46, v1

    move/from16 v47, v2

    move/from16 v40, v4

    move-object/from16 v42, v6

    move-object/from16 v43, v8

    move-object/from16 v44, v10

    move/from16 v39, v11

    move-object/from16 v45, v12

    move/from16 v48, v13

    invoke-static/range {v39 .. v48}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    :goto_c3c
    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_c41
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isDebuggable()Z

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {v5, v1, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseRevisionCode()I

    move-result v0

    iput v0, v5, Lcom/android/server/pm/PackageSetting;->mBaseRevisionCode:I

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v0

    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, p3, v12

    if-eqz v2, :cond_c7d

    cmp-long v2, v10, v12

    if-nez v2, :cond_c73

    move-wide/from16 v10, p3

    invoke-virtual {v5, v7, v10, v11}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    invoke-virtual {v5, v10, v11}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    goto :goto_c99

    :cond_c73
    move-wide/from16 v10, p3

    and-int/lit8 v2, v71, 0x8

    if-eqz v2, :cond_c99

    invoke-virtual {v5, v10, v11}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    goto :goto_c99

    :cond_c7d
    cmp-long v2, v10, v12

    if-nez v2, :cond_c88

    invoke-virtual {v5, v7, v0, v1}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    goto :goto_c99

    :cond_c88
    iget v2, v14, Lcom/android/server/pm/ScanRequest;->mParseFlags:I

    const/16 v27, 0x10

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c99

    iget-wide v6, v5, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_c99

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    :cond_c99
    :goto_c99
    iput-wide v0, v5, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    move-object v0, v9

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v5, v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    iput v0, v5, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v9}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v0

    iget-wide v6, v5, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_cc9

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_cc9
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d12

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v66

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_ce5

    move-object/from16 v2, v36

    goto :goto_ce7

    :cond_ce5
    move-object/from16 v2, v38

    :goto_ce7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " volume from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v67

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v5, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_d12
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {v5, v1, v0}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d5c

    new-instance v35, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v37

    invoke-static {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v38

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v39

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v6

    invoke-direct {v2, v3, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v36, 0x0

    const/16 v42, 0x3

    const/16 v44, 0x0

    move-wide/from16 v40, v0

    move-object/from16 v43, v2

    invoke-direct/range {v35 .. v46}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v4, v35

    goto :goto_d5d

    :cond_d5c
    const/4 v4, 0x0

    :goto_d5d
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d98

    new-instance v35, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v37

    invoke-static {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v38

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v39

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v40

    new-instance v0, Landroid/content/pm/VersionedPackage;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v36, 0x0

    const/16 v42, 0x2

    const/16 v44, 0x0

    move-object/from16 v43, v0

    invoke-direct/range {v35 .. v46}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v15, v35

    goto :goto_d99

    :cond_d98
    const/4 v15, 0x0

    :goto_d99
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_df6

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_db8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Ljava/lang/String;

    new-instance v35, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v37

    invoke-static {v9}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v38

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v6

    invoke-direct {v2, v3, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v36, 0x0

    const-wide/16 v40, -0x1

    const/16 v42, 0x1

    const/16 v44, 0x0

    move-object/from16 v43, v2

    invoke-direct/range {v35 .. v46}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v2, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_db8

    :cond_df4
    move-object v6, v0

    goto :goto_df7

    :cond_df6
    const/4 v6, 0x0

    :goto_df7
    new-instance v0, Lcom/android/server/pm/ScanResult;

    const/16 v24, 0x1

    xor-int/lit8 v3, v34, 0x1

    move-object v2, v5

    move-object v1, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ScanResult;-><init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;ZLandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V

    return-object v0

    :goto_e04
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V
    .registers 11

    if-nez p3, :cond_6

    if-nez p4, :cond_6

    goto/16 :goto_79

    :cond_6
    const/4 v0, 0x1

    const/16 v1, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_39

    if-eqz p3, :cond_23

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-nez p0, :cond_23

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void

    :cond_23
    if-eqz p4, :cond_79

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p0

    if-eqz p0, :cond_79

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    return-void

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    array-length p2, p0

    move v2, v3

    :goto_47
    if-ge v2, p2, :cond_79

    aget v4, p0, v2

    if-eqz p3, :cond_61

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-nez v5, :cond_61

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_76

    :cond_61
    if-eqz p4, :cond_76

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_79
    :goto_79
    return-void
.end method
