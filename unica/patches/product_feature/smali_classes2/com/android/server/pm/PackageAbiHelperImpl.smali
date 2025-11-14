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
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    const-string v1, "Can\'t canonicalize code path "

    const-string/jumbo v2, "PackageManager"

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_7

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

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_1

    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object p0, v3

    move-object v3, v4

    goto :goto_0

    :cond_9
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
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
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Odd, "

    const-string v2, " doesn\'t look like an APK"

    const-string/jumbo v3, "PackageManager"

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    move p4, v2

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result p5

    iget-object v3, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "lib"

    if-eqz p5, :cond_6

    if-eqz p4, :cond_4

    invoke-static {p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "lib64"

    if-eqz p0, :cond_2

    move-object p4, p3

    goto :goto_2

    :cond_2
    move-object p4, v5

    :goto_2
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {p4, p2}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    if-eqz v3, :cond_5

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, p3

    :goto_3
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v5, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    :cond_5
    :goto_4
    move-object p0, p4

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    if-nez p0, :cond_7

    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    goto :goto_5

    :cond_7
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-direct {p1, p4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_8

    new-instance p1, Ljava/io/File;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_8
    move v1, v2

    :goto_6
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {p1, p4, v1, p0, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

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

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V
    .locals 2

    if-gez p0, :cond_3

    const/16 v0, -0x72

    const/16 v1, -0x71

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x83

    const-string/jumbo p2, "The multiArch app\'s native libs don\'t support all the natively supported ABIs of the device."

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6

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
    .locals 19

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

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    :cond_2
    iget-object v6, v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPageSizeAppCompatFlags()I

    move-result v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v11, "findSupportedAbi"

    const-string/jumbo v12, "copyNativeBinaries"

    const/16 v13, -0x6e

    const/16 p0, 0x0

    const-wide/32 v4, 0x40000

    iget-boolean v2, v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    if-eqz v6, :cond_18

    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v6, 0x23

    if-lt v0, v6, :cond_4

    if-nez p4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move/from16 v0, p0

    :goto_2
    if-eqz v0, :cond_6

    sget-object v6, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    goto :goto_5

    :goto_3
    move-object v8, v9

    goto/16 :goto_1b

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_19

    :cond_6
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    :goto_5
    if-eqz v0, :cond_8

    sget-object v16, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    if-eqz v16, :cond_7

    goto :goto_6

    :cond_7
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    :goto_6
    move-object/from16 v8, v16

    goto :goto_7

    :cond_8
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_6

    :goto_7
    array-length v15, v6

    if-lez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    move/from16 v15, p0

    :goto_8
    array-length v14, v8

    if-lez v14, :cond_a

    const/4 v14, 0x1

    goto :goto_9

    :cond_a
    move/from16 v14, p0

    :goto_9
    if-eqz v15, :cond_c

    if-eqz v3, :cond_b

    invoke-static {v4, v5, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v6, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v17

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_b
    invoke-static {v4, v5, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v6}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v17

    :goto_a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v4, v17

    goto :goto_b

    :cond_c
    const/16 v4, -0x72

    :goto_b
    const-string/jumbo v5, "Shared library native lib extraction not supported"

    if-ltz v4, :cond_e

    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v18

    if-eqz v18, :cond_e

    if-nez v3, :cond_d

    goto :goto_c

    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, v13, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_e
    :goto_c
    const-string v13, "Error unpackaging 32 bit native libs for multiarch app."

    if-eqz v0, :cond_f

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    goto :goto_d

    :cond_f
    move/from16 v15, p0

    :goto_d
    invoke-static {v4, v13, v15}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V

    if-eqz v14, :cond_11

    if-eqz v3, :cond_10

    move v13, v3

    move/from16 p4, v4

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v8, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    const-wide/32 v3, 0x40000

    goto :goto_e

    :cond_10
    move v13, v3

    move/from16 p4, v4

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v8}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v2

    :goto_e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_f

    :cond_11
    move v13, v3

    move/from16 p4, v4

    const/16 v2, -0x72

    :goto_f
    const-string v3, "Error unpackaging 64 bit native libs for multiarch app."

    if-eqz v0, :cond_12

    if-eqz v14, :cond_12

    const/4 v4, 0x1

    goto :goto_10

    :cond_12
    move/from16 v4, p0

    :goto_10
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V

    if-ltz v2, :cond_15

    if-eqz v13, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_11

    :cond_13
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14
    :goto_11
    aget-object v0, v8, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    goto :goto_12

    :cond_15
    const/4 v3, 0x0

    :goto_12
    if-ltz p4, :cond_17

    :try_start_4
    aget-object v0, v6, p4

    if-ltz v2, :cond_1f

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->is32BitAbiPreferred()Z

    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_16

    move-object v8, v3

    goto/16 :goto_18

    :cond_16
    move-object v8, v0

    move-object v0, v3

    goto/16 :goto_18

    :catch_1
    move-exception v0

    goto/16 :goto_19

    :cond_17
    move-object v0, v3

    goto/16 :goto_17

    :cond_18
    move v13, v3

    if-eqz p4, :cond_19

    :try_start_5
    filled-new-array/range {p4 .. p4}, [Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_19
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_13
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1b

    if-nez p4, :cond_1b

    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v3

    if-lez v4, :cond_1a

    const/4 v5, 0x1

    goto :goto_14

    :cond_1a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    const/16 v3, -0x10

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1b
    move/from16 v5, p0

    :goto_14
    if-eqz v13, :cond_1c

    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v3, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    const-wide/32 v13, 0x40000

    goto :goto_15

    :cond_1c
    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v3}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v2

    :goto_15
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v2, :cond_1e

    const/16 v4, -0x72

    if-ne v2, v4, :cond_1d

    goto :goto_16

    :cond_1d
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6e

    invoke-direct {v3, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_1e
    :goto_16
    if-ltz v2, :cond_21

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_20

    aget-object v0, v3, v2

    :cond_1f
    :goto_17
    const/4 v8, 0x0

    goto :goto_18

    :cond_20
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v2, "Shared library with native libs must be multiarch"

    const/16 v3, -0x6e

    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_21
    const/16 v4, -0x72

    if-ne v2, v4, :cond_22

    if-eqz p4, :cond_22

    move-object/from16 v0, p4

    goto :goto_17

    :cond_22
    if-eqz v5, :cond_23

    aget-object v0, v3, p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    goto :goto_17

    :goto_18
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1a

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    goto :goto_1b

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_19
    :try_start_6
    const-string/jumbo v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v3

    const/4 v8, 0x0

    :goto_1a
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

    :goto_1b
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public final getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 7

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Instruction set mismatch, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const-string/jumbo v5, "[caller]"

    goto :goto_2

    :cond_4
    move-object v5, v1

    :goto_2
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

    :cond_5
    if-nez v0, :cond_1

    move-object v1, v2

    move-object v0, v3

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    return-object p0

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 7

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

    if-eqz v2, :cond_0

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

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v0, v0, v4

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v0, v0, v4

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v4

    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    if-nez p0, :cond_3

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    :goto_2
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_3

    :cond_3
    if-eqz p0, :cond_4

    if-nez v1, :cond_4

    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_7

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result p0

    if-nez p0, :cond_5

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

    :cond_5
    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, p0, v4

    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    goto :goto_3

    :cond_6
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, p0, v4

    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v4

    goto :goto_3

    :cond_7
    move-object p0, v0

    :goto_3
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
