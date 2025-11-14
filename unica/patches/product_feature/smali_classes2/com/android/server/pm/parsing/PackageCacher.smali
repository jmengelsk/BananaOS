.class public final Lcom/android/server/pm/parsing/PackageCacher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/pm/parsing/IPackageCacher;


# static fields
.field public static final sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mCacheDir:Ljava/io/File;

.field public final mCallback:Lcom/android/server/pm/PackageManagerService$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCallback:Lcom/android/server/pm/PackageManagerService$3;

    return-void
.end method

.method public static fromCacheEntryStatic([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([BLcom/android/server/pm/PackageManagerService$3;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public static fromCacheEntryStatic([BLcom/android/server/pm/PackageManagerService$3;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {p0, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    new-instance p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;-><init>(Landroid/os/Parcel;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object p1, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object p0
.end method

.method public static getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCacheFileUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const-string v0, "Failed to find APEX file backing "

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/pm/ApexManager;->getBackingApexFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PackageCacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object p0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    iget-wide v0, p0, Landroid/system/StructStat;->st_mtime:J

    iget-wide p0, p1, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->ENOENT:I

    if-eq p1, v0, :cond_2

    const-string p1, "Error while stating package cache : "

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static toCacheEntryStatic(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    check-cast p0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public final cacheResult(Ljava/io/File;ILcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 4

    const-string/jumbo v0, "PackageCacher"

    const-string/jumbo v1, "Unable to delete cache file: "

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    goto :goto_5

    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    const-string p2, "Error writing cache entry."

    invoke-static {v0, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_3
    invoke-static {v2, p1}, Lcom/samsung/android/server/pm/install/PackageCacherUtils;->changeModifiedTimeOfTheCacheIfNeeded(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :goto_4
    const-string p1, "Error saving package cache."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public final cleanCachedResult(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    new-instance v0, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/pm/parsing/PackageCacher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to clean cache file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PackageCacher"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fromCacheEntry([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntryStatic([BLcom/android/server/pm/PackageManagerService$3;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public final getCachedResult(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 6

    const-string/jumbo v0, "PackageCacher"

    const-string v1, "Feature flags for package "

    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/PackageCacher;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/parsing/PackageCacher;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/server/pm/parsing/PackageCacher;->isCacheFileUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/parsing/PackageCacher;->fromCacheEntry([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-object p2

    :cond_1
    move-object v3, p0

    check-cast v3, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getFeatureFlagState()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/pm/parsing/PackageCacher;->sAconfigFlags:Lcom/android/internal/pm/pkg/component/AconfigFlags;

    invoke-virtual {v5, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getFlagValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature flag "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed for package "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; cached result is invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    return-object p0

    :goto_1
    const-string p1, "Error reading package cache: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object p2
.end method

.method public toCacheEntry(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B
    .locals 0

    invoke-static {p1}, Lcom/android/server/pm/parsing/PackageCacher;->toCacheEntryStatic(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)[B

    move-result-object p0

    return-object p0
.end method
