.class public final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# static fields
.field public static sNativelySupported32BitAbis:[Ljava/lang/String;

.field public static sNativelySupported64BitAbis:[Ljava/lang/String;


# direct methods
.method public static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_15
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_25

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_25
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_35
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_45
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_55

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_55
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_65

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_65
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_75

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f2

    :cond_75
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    const-string v1, "Can\'t canonicalize code path "

    const-string/jumbo v2, "PackageManager"

    if-eqz p0, :cond_c4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_b0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_f2

    :cond_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_f2

    :cond_c4
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    :goto_cc
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_d5

    move-object p0, v3

    move-object v3, v4

    goto :goto_cc

    :cond_d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized code path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_f2} :catch_f7

    :goto_f2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_f7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v2

    :cond_14
    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_31

    :cond_25
    const-string/jumbo v1, "Odd, "

    const-string v2, " doesn\'t look like an APK"

    const-string/jumbo v3, "PackageManager"

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_31
    :goto_31
    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_d

    if-nez p5, :cond_d

    move p4, v2

    goto :goto_e

    :cond_d
    move p4, v1

    :goto_e
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result p5

    iget-object v3, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "lib"

    if-eqz p5, :cond_75

    if-eqz p4, :cond_66

    invoke-static {p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    if-nez p0, :cond_29

    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    goto :goto_2d

    :cond_29
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2d
    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "lib64"

    if-eqz p0, :cond_3c

    move-object p4, p3

    goto :goto_3d

    :cond_3c
    move-object p4, v5

    :goto_3d
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {p4, p2}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    if-eqz v3, :cond_73

    if-eqz p0, :cond_53

    goto :goto_54

    :cond_53
    move-object v5, p3

    :goto_54
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v5, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_73

    :cond_66
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    :cond_73
    :goto_73
    move-object p0, p4

    goto :goto_a2

    :cond_75
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    if-nez p0, :cond_87

    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    goto :goto_8b

    :cond_87
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_8b
    invoke-direct {p1, p4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_a1

    new-instance p1, Ljava/io/File;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_a1
    move v1, v2

    :goto_a2
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {p1, p4, v1, p0, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_2f

    aget-object v3, p0, v2

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ro.dalvik.vm.isa."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2f
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V
    .registers 5

    if-gez p0, :cond_21

    const/16 v0, -0x72

    const/16 v1, -0x71

    if-eq p0, v0, :cond_11

    if-ne p0, v1, :cond_b

    goto :goto_11

    :cond_b
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_11
    :goto_11
    if-eqz p2, :cond_21

    if-eq p0, v1, :cond_16

    goto :goto_21

    :cond_16
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x83

    const-string/jumbo p2, "The multiArch app\'s native libs don\'t support all the natively supported ABIs of the device."

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public final deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 11

    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-object p0, p1

    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, p3

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object p0

    return-object p0
.end method

.method public final derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .registers 25

    const-string/jumbo v1, "Unable to get canonical file "

    const-string v0, "Error unpackaging native libs for app, errorCode="

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v4, v3, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v5, p5

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz p2, :cond_3c

    if-nez p3, :cond_3c

    const/4 v3, 0x0

    :cond_3c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v3, 0x0

    :cond_4d
    iget-object v6, v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    :try_start_57
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPageSizeAppCompatFlags()I

    move-result v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_61

    const/4 v9, 0x1

    goto :goto_62

    :cond_61
    const/4 v9, 0x0

    :goto_62
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v13

    invoke-static {v10, v11, v12, v13, v9}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v9
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_76} :catch_212
    .catchall {:try_start_57 .. :try_end_76} :catchall_20f

    :try_start_76
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v6
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7f} :catch_e7
    .catchall {:try_start_76 .. :try_end_7f} :catchall_e5

    const-string/jumbo v11, "findSupportedAbi"

    const-string/jumbo v12, "copyNativeBinaries"

    const/16 v13, -0x6e

    const/16 p0, 0x0

    const-wide/32 v4, 0x40000

    iget-boolean v2, v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    if-eqz v6, :cond_182

    :try_start_90
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v6, 0x23

    if-lt v0, v6, :cond_9c

    if-nez p4, :cond_9c

    const/4 v0, 0x1

    goto :goto_9e

    :cond_9c
    move/from16 v0, p0

    :goto_9e
    if-eqz v0, :cond_b4

    sget-object v6, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    if-eqz v6, :cond_a5

    goto :goto_b6

    :cond_a5
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    goto :goto_b6

    :goto_ae
    move-object v8, v9

    goto/16 :goto_24d

    :goto_b1
    const/4 v3, 0x0

    goto/16 :goto_215

    :cond_b4
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    :goto_b6
    if-eqz v0, :cond_c8

    sget-object v16, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    if-eqz v16, :cond_bd

    goto :goto_c5

    :cond_bd
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    :goto_c5
    move-object/from16 v8, v16

    goto :goto_cb

    :cond_c8
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_c5

    :goto_cb
    array-length v15, v6

    if-lez v15, :cond_d0

    const/4 v15, 0x1

    goto :goto_d2

    :cond_d0
    move/from16 v15, p0

    :goto_d2
    array-length v14, v8

    if-lez v14, :cond_d7

    const/4 v14, 0x1

    goto :goto_d9

    :cond_d7
    move/from16 v14, p0

    :goto_d9
    if-eqz v15, :cond_f6

    if-eqz v3, :cond_e9

    invoke-static {v4, v5, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v6, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v17

    goto :goto_f0

    :catchall_e5
    move-exception v0

    goto :goto_ae

    :catch_e7
    move-exception v0

    goto :goto_b1

    :cond_e9
    invoke-static {v4, v5, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v6}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v17

    :goto_f0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_f3} :catch_e7
    .catchall {:try_start_90 .. :try_end_f3} :catchall_e5

    move/from16 v4, v17

    goto :goto_f8

    :cond_f6
    const/16 v4, -0x72

    :goto_f8
    const-string/jumbo v5, "Shared library native lib extraction not supported"

    if-ltz v4, :cond_10c

    :try_start_fd
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v18

    if-eqz v18, :cond_10c

    if-nez v3, :cond_106

    goto :goto_10c

    :cond_106
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, v13, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_10c
    :goto_10c
    const-string v13, "Error unpackaging 32 bit native libs for multiarch app."

    if-eqz v0, :cond_114

    if-eqz v15, :cond_114

    const/4 v15, 0x1

    goto :goto_116

    :cond_114
    move/from16 v15, p0

    :goto_116
    invoke-static {v4, v13, v15}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V

    if-eqz v14, :cond_13f

    if-eqz v3, :cond_12e

    move v13, v3

    move/from16 p4, v4

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v8, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    const-wide/32 v3, 0x40000

    goto :goto_13b

    :cond_12e
    move v13, v3

    move/from16 p4, v4

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v8}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v2

    :goto_13b
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_144

    :cond_13f
    move v13, v3

    move/from16 p4, v4

    const/16 v2, -0x72

    :goto_144
    const-string v3, "Error unpackaging 64 bit native libs for multiarch app."

    if-eqz v0, :cond_14c

    if-eqz v14, :cond_14c

    const/4 v4, 0x1

    goto :goto_14e

    :cond_14c
    move/from16 v4, p0

    :goto_14e
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V

    if-ltz v2, :cond_168

    if-eqz v13, :cond_164

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_15c

    goto :goto_164

    :cond_15c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_164
    :goto_164
    aget-object v0, v8, v2
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_166} :catch_e7
    .catchall {:try_start_fd .. :try_end_166} :catchall_e5

    move-object v3, v0

    goto :goto_169

    :cond_168
    const/4 v3, 0x0

    :goto_169
    if-ltz p4, :cond_17f

    :try_start_16b
    aget-object v0, v6, p4

    if-ltz v2, :cond_1ee

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->is32BitAbiPreferred()Z

    move-result v1
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_173} :catch_17c
    .catchall {:try_start_16b .. :try_end_173} :catchall_e5

    if-eqz v1, :cond_178

    move-object v8, v3

    goto/16 :goto_20b

    :cond_178
    move-object v8, v0

    move-object v0, v3

    goto/16 :goto_20b

    :catch_17c
    move-exception v0

    goto/16 :goto_215

    :cond_17f
    move-object v0, v3

    goto/16 :goto_1ee

    :cond_182
    move v13, v3

    if-eqz p4, :cond_18a

    :try_start_185
    filled-new-array/range {p4 .. p4}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_18c

    :cond_18a
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_18c
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1aa

    if-nez p4, :cond_1aa

    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v3

    if-lez v4, :cond_1a0

    const/4 v5, 0x1

    goto :goto_1ac

    :cond_1a0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    const/16 v3, -0x10

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1aa
    move/from16 v5, p0

    :goto_1ac
    if-eqz v13, :cond_1bc

    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v3, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    const-wide/32 v13, 0x40000

    goto :goto_1c6

    :cond_1bc
    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v3}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v2

    :goto_1c6
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v2, :cond_1e4

    const/16 v4, -0x72

    if-ne v2, v4, :cond_1d0

    goto :goto_1e4

    :cond_1d0
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6e

    invoke-direct {v3, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_1e4
    :goto_1e4
    if-ltz v2, :cond_1fb

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_1f0

    aget-object v0, v3, v2

    :cond_1ee
    :goto_1ee
    const/4 v8, 0x0

    goto :goto_20b

    :cond_1f0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v2, "Shared library with native libs must be multiarch"

    const/16 v3, -0x6e

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1fb
    const/16 v4, -0x72

    if-ne v2, v4, :cond_204

    if-eqz p4, :cond_204

    move-object/from16 v0, p4

    goto :goto_1ee

    :cond_204
    if-eqz v5, :cond_209

    aget-object v0, v3, p0
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_208} :catch_e7
    .catchall {:try_start_185 .. :try_end_208} :catchall_e5

    goto :goto_1ee

    :cond_209
    const/4 v0, 0x0

    goto :goto_1ee

    :goto_20b
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_230

    :catchall_20f
    move-exception v0

    const/4 v8, 0x0

    goto :goto_24d

    :catch_212
    move-exception v0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_215
    :try_start_215
    const-string/jumbo v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22b
    .catchall {:try_start_215 .. :try_end_22b} :catchall_e5

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v3

    const/4 v8, 0x0

    :goto_230
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v0, v8}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v4, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :goto_24d
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public final getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 10

    const/4 p0, 0x0

    if-eqz p2, :cond_11

    move-object v0, p2

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p2, :cond_34

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_17

    :cond_34
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_17

    :cond_3b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Instruction set mismatch, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_58

    const-string/jumbo v5, "[caller]"

    goto :goto_59

    :cond_58
    move-object v5, v1

    :goto_59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " whereas "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    if-nez v0, :cond_17

    move-object v1, v2

    move-object v0, v3

    goto :goto_17

    :cond_81
    if-nez v0, :cond_84

    return-object p0

    :cond_84
    if-eqz v1, :cond_8b

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8b
    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 9

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v2

    const-string/jumbo v3, "lib"

    const/4 v4, 0x0

    if-eqz v2, :cond_4b

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "lib64"

    invoke-direct {v2, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    goto :goto_93

    :cond_4b
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    aget-object v0, v0, v4

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    move v1, v0

    goto :goto_72

    :cond_71
    move v1, v4

    :goto_72
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    aget-object v0, v0, v4

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    goto :goto_93

    :cond_92
    move p0, v4

    :goto_93
    const/4 v0, 0x0

    if-eqz v1, :cond_a0

    if-nez p0, :cond_a0

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    :goto_9c
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_e8

    :cond_a0
    if-eqz p0, :cond_a9

    if-nez v1, :cond_a9

    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    goto :goto_9c

    :cond_a9
    if-eqz p0, :cond_e7

    if-eqz v1, :cond_e7

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result p0

    if-nez p0, :cond_cd

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_de

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, p0, v4

    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    goto :goto_e8

    :cond_de
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, p0, v4

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    goto :goto_e8

    :cond_e7
    move-object p0, v0

    :goto_e8
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
