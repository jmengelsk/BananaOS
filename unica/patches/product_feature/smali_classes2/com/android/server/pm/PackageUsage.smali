.class public final Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mIsHistoricalPackageUsageAvailable:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string/jumbo v0, "package-usage.list"

    const-string/jumbo v1, "PackageUsage_DiskWriter"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return-void
.end method

.method public static parseAsLong(Ljava/lang/String;)J
    .registers 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse "

    const-string v3, " as a long."

    invoke-static {v2, p0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    const/16 v1, 0xa

    if-ne v0, v1, :cond_25

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9

    :goto_0
    if-eqz p3, :cond_4a

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    const/4 p3, 0x0

    aget-object v1, v0, p3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-nez v1, :cond_18

    goto :goto_37

    :cond_18
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1f
    const/16 v0, 0x8

    if-ge p3, v0, :cond_37

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez p3, :cond_2b

    goto :goto_34

    :cond_2b
    if-lt p3, v0, :cond_2e

    goto :goto_34

    :cond_2e
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    aput-wide v2, v0, p3

    :goto_34
    add-int/lit8 p3, p3, 0x1

    goto :goto_1f

    :cond_37
    :goto_37
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to parse "

    const-string p2, " as package-timestamp pair."

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    return-void
.end method

.method public static readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .registers 11

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3c

    const/4 v0, 0x0

    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_1d

    goto :goto_0

    :cond_1d
    :goto_1d
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    add-int/lit8 v4, v0, 0x1

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v0, :cond_31

    goto :goto_3a

    :cond_31
    if-lt v0, v3, :cond_34

    goto :goto_3a

    :cond_34
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v3

    aput-wide v5, v3, v0

    :goto_3a
    move v0, v4

    goto :goto_1d

    :cond_3c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to parse "

    const-string p2, " as a timestamp array."

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    return-void
.end method


# virtual methods
.method public final readInternal(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_45
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_38
    .catchall {:try_start_5 .. :try_end_e} :catchall_36

    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_32

    :cond_1a
    const-string/jumbo v3, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-static {p1, v2, v0}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    goto :goto_32

    :catchall_27
    move-exception p0

    move-object v1, v2

    goto :goto_4a

    :catch_2a
    move-exception p0

    move-object v1, v2

    goto :goto_39

    :catch_2d
    move-object v1, v2

    goto :goto_45

    :cond_2f
    invoke-static {p1, v2, v0, v1}, Lcom/android/server/pm/PackageUsage;->readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_32} :catch_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_32} :catch_2a
    .catchall {:try_start_e .. :try_end_32} :catchall_27

    :goto_32
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_36
    move-exception p0

    goto :goto_4a

    :catch_38
    move-exception p0

    :goto_39
    :try_start_39
    const-string/jumbo p1, "PackageManager"

    const-string v0, "Failed to read package usage times"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_36

    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_49

    :catch_45
    :goto_45
    const/4 p1, 0x0

    :try_start_46
    iput-boolean p1, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_36

    goto :goto_41

    :goto_49
    return-void

    :goto_4a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final writeInternal(Ljava/lang/Object;)V
    .registers 12

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p0

    :try_start_6
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_99

    :try_start_a
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x408

    const/16 v4, 0x1a0

    const/16 v5, 0x3e8

    invoke-static {v2, v4, v5, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_51} :catch_7f

    if-eqz v4, :cond_45

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    if-eqz v5, :cond_45

    :try_start_57
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_62

    goto :goto_45

    :cond_62
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v4

    array-length v5, v4

    :goto_70
    if-ge v6, v5, :cond_81

    aget-wide v7, v4, v6

    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    :catch_7f
    move-exception p1

    goto :goto_9b

    :cond_81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_45

    :cond_92
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_98} :catch_7f

    return-void

    :catch_99
    move-exception p1

    const/4 v0, 0x0

    :goto_9b
    if-eqz v0, :cond_a0

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_a0
    const-string/jumbo p0, "PackageManager"

    const-string v0, "Failed to write package usage times"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
