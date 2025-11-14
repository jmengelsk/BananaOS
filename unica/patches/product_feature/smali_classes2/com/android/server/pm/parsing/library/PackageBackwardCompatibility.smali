.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;


# instance fields
.field public final mBootClassPathContainsATB:Z

.field public final mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string/jumbo v0, "PackageBackwardCompatibility"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/pm/parsing/library/WearSdkUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    invoke-direct {v2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "android.content.pm.AndroidTestBaseUpdater"

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_3d
    const-class v5, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_47} :catch_53

    if-eqz v2, :cond_4b

    move v2, v3

    goto :goto_4c

    :cond_4b
    move v2, v4

    :goto_4c
    :try_start_4c
    const-string/jumbo v5, "Loaded android.content.pm.AndroidTestBaseUpdater"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_52} :catch_54

    goto :goto_59

    :catch_53
    move v2, v4

    :catch_54
    const-string v5, "Could not find android.content.pm.AndroidTestBaseUpdater, ignoring"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    if-eqz v2, :cond_64

    new-instance v0, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_64
    new-instance v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6c
    xor-int/lit8 v0, v2, 0x1

    new-instance v2, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;-><init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V

    sput-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-void
.end method

.method public constructor <init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    iput-object p2, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-void
.end method

.method public static bootClassPathContainsATB()Z
    .registers 1

    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    iget-boolean v0, v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .registers 1

    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-object v0
.end method

.method public static modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .registers 4

    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    return-void
.end method


# virtual methods
.method public getPackageUpdaters()[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-object p0
.end method

.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
