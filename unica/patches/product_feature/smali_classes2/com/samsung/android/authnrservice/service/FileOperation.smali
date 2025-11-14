.class public final Lcom/samsung/android/authnrservice/service/FileOperation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;


# direct methods
.method public static getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "FO"

    if-nez v2, :cond_1b

    const-string/jumbo p0, "file not exist"

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1b
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v4, "/"

    if-nez v2, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_32
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_43
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_47
    invoke-static {p0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    array-length v2, v1

    if-nez v2, :cond_55

    goto :goto_80

    :cond_55
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_7f

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_7f
    return-object v0

    :cond_80
    :goto_80
    const-string/jumbo p0, "children paths not exist"

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14

    const-string v0, "IOE 2"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "FO"

    if-nez v3, :cond_1b

    const-string/jumbo p0, "file not exist"

    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1b
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3d

    const-string v3, "/"

    invoke-static {p0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    array-length v3, v2

    if-nez v3, :cond_32

    goto :goto_36

    :cond_32
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_42

    :cond_36
    :goto_36
    const-string/jumbo p0, "children paths not exist"

    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v5

    :goto_42
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    array-length v3, v2

    move v6, v5

    :goto_48
    if-ge v6, v3, :cond_136

    aget-object v7, v2, v6

    new-instance v8, Ljava/io/File;

    invoke-static {p0, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_e1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e1

    :cond_71
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_80

    goto :goto_e1

    :cond_80
    const/4 v8, 0x0

    :try_start_81
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_95} :catch_e7
    .catchall {:try_start_81 .. :try_end_95} :catchall_e5

    :try_start_95
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v7, v10

    new-array v10, v7, [B

    invoke-virtual {v9, v10, v5, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c9

    const/4 v7, 0x3

    invoke-static {v10, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_c2} :catch_c6
    .catchall {:try_start_95 .. :try_end_c2} :catchall_c3

    goto :goto_c9

    :catchall_c3
    move-exception p0

    move-object v8, v9

    goto :goto_11b

    :catch_c6
    move-exception p0

    move-object v8, v9

    goto :goto_e8

    :cond_c9
    :goto_c9
    :try_start_c9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_e1

    :catch_cd
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    :goto_e1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_48

    :catchall_e5
    move-exception p0

    goto :goto_11b

    :catch_e7
    move-exception p0

    :goto_e8
    :try_start_e8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOE 1"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_e8 .. :try_end_100} :catchall_e5

    if-eqz v8, :cond_136

    :try_start_102
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_136

    :catch_106
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_136

    :goto_11b
    if-eqz v8, :cond_135

    :try_start_11d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_121

    goto :goto_135

    :catch_121
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    :goto_135
    throw p0

    :cond_136
    :goto_136
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/FileOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/authnrservice/service/FileOperation;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/samsung/android/authnrservice/service/FileOperation;->mFileOperation:Lcom/samsung/android/authnrservice/service/FileOperation;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final declared-synchronized deleteFile(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "/data/.fido/"

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->verifyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string p1, "FO"

    const-string/jumbo v0, "delete file fail"

    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_14
    move-exception p1

    goto :goto_28

    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFileRec(Ljava/lang/String;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_14

    monitor-exit p0

    return p1

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_14

    throw p1
.end method

.method public final declared-synchronized deleteFileRec(Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const-string p1, "FO"

    const-string/jumbo v0, "file not exist"

    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return v2

    :catchall_17
    move-exception p1

    goto/16 :goto_b3

    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ad

    array-length v3, v1

    if-lez v3, :cond_ad

    array-length v3, v1

    move v4, v2

    :goto_3c
    if-ge v4, v3, :cond_ad

    aget-object v5, v1, v4

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFileRec(Ljava/lang/String;)Z

    move-result v5
    :try_end_62
    .catchall {:try_start_1a .. :try_end_62} :catchall_17

    if-nez v5, :cond_8d

    monitor-exit p0

    return v2

    :cond_66
    :try_start_66
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_8d

    const-string v5, "FO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleting file failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_90
    const-string p1, "FO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deleting file failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_66 .. :try_end_ab} :catchall_17

    monitor-exit p0

    return v2

    :cond_ad
    :try_start_ad
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_17

    monitor-exit p0

    return p1

    :goto_b3
    :try_start_b3
    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_17

    throw p1
.end method

.method public final getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->verifyPath(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "FO"

    const-string/jumbo p1, "get matched file path fail"

    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_14
    const-string p0, ""

    if-nez p1, :cond_1a

    move-object p1, p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_1e
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2c
    const-string v0, "/data/.fido/"

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_39
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "IOE 2"

    const-string v1, "IOE 1"

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->verifyPath(Ljava/lang/String;)Z

    move-result p0

    const-string v2, ""

    const-string v3, "FO"

    if-nez p0, :cond_15

    const-string/jumbo p0, "read file fail"

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_15
    const-string p0, "/data/.fido/"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2d

    const-string/jumbo p0, "file not exist"

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string/jumbo p0, "file is a directory"

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3a
    const/4 v4, 0x0

    :try_start_3b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_7b
    .catchall {:try_start_3b .. :try_end_40} :catchall_79

    :try_start_40
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int p0, v6

    new-array v4, p0, [B

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    const/4 p1, -0x1

    if-eq p0, p1, :cond_5c

    const/4 p0, 0x3

    invoke-static {v4, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_57} :catch_77
    .catchall {:try_start_40 .. :try_end_57} :catchall_75

    goto :goto_5c

    :goto_58
    move-object v4, v5

    goto :goto_9d

    :goto_5a
    move-object v4, v5

    goto :goto_7c

    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_9c

    :catch_60
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_66
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :catchall_75
    move-exception p0

    goto :goto_58

    :catch_77
    move-exception p0

    goto :goto_5a

    :catchall_79
    move-exception p0

    goto :goto_9d

    :catch_7b
    move-exception p0

    :goto_7c
    :try_start_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_79

    if-eqz v4, :cond_9c

    :try_start_91
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_9c

    :catch_95
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_66

    :cond_9c
    :goto_9c
    return-object v2

    :goto_9d
    if-eqz v4, :cond_b7

    :try_start_9f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_b7

    :catch_a3
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    :goto_b7
    throw p0
.end method

.method public final declared-synchronized verifyPath(Ljava/lang/String;)Z
    .registers 6

    const-string/jumbo v0, "path convert fail. "

    const-string/jumbo v1, "wrong path"

    const-string v2, "/data/.fido/"

    monitor-enter p0

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_32

    const/4 v2, 0x0

    :try_start_16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v3, "/data/.fido/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "FO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_30} :catch_34
    .catchall {:try_start_16 .. :try_end_30} :catchall_32

    monitor-exit p0

    return v2

    :catchall_32
    move-exception p1

    goto :goto_50

    :catch_34
    move-exception p1

    goto :goto_39

    :cond_36
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_39
    :try_start_39
    const-string v1, "FO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_32

    monitor-exit p0

    return v2

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_32

    throw p1
.end method

.method public final declared-synchronized writeFile([BLjava/lang/String;)Z
    .registers 10

    const-string v0, "IOE 2"

    const-string v1, "IOE 2"

    const-string v2, "IOE 1"

    const-string v3, "IOE 2"

    const-string v4, "/data/.fido/"

    monitor-enter p0

    :try_start_b
    invoke-virtual {p0, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->verifyPath(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1f

    const-string p1, "FO"

    const-string/jumbo p2, "write file fail"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return v6

    :catchall_1c
    move-exception p1

    goto/16 :goto_e7

    :cond_1f
    :try_start_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4a

    const-string p1, "FO"

    const-string/jumbo p2, "invalid path"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_1c

    monitor-exit p0

    return v6

    :cond_4a
    :try_start_4a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_65

    const-string p1, "FO"

    const-string/jumbo p2, "mkdirs failed"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_1c

    monitor-exit p0

    return v6

    :cond_65
    const/4 v4, 0x0

    :try_start_66
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6b} :catch_96
    .catchall {:try_start_66 .. :try_end_6b} :catchall_94

    :try_start_6b
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_71} :catch_91
    .catchall {:try_start_6b .. :try_end_71} :catchall_8e

    :try_start_71
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_1c

    goto :goto_8b

    :catch_75
    move-exception p1

    :try_start_76
    const-string p2, "FO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_1c

    :goto_8b
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_8e
    move-exception p1

    move-object v4, v5

    goto :goto_ca

    :catch_91
    move-exception p1

    move-object v4, v5

    goto :goto_97

    :catchall_94
    move-exception p1

    goto :goto_ca

    :catch_96
    move-exception p1

    :goto_97
    :try_start_97
    const-string p2, "FO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_97 .. :try_end_ac} :catchall_94

    if-eqz v4, :cond_c8

    :try_start_ae
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2
    .catchall {:try_start_ae .. :try_end_b1} :catchall_1c

    goto :goto_c8

    :catch_b2
    move-exception p1

    :try_start_b3
    const-string p2, "FO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_b3 .. :try_end_c8} :catchall_1c

    :cond_c8
    :goto_c8
    monitor-exit p0

    return v6

    :goto_ca
    if-eqz v4, :cond_e6

    :try_start_cc
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catchall {:try_start_cc .. :try_end_cf} :catchall_1c

    goto :goto_e6

    :catch_d0
    move-exception p2

    :try_start_d1
    const-string v1, "FO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    :goto_e6
    throw p1

    :goto_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_d1 .. :try_end_e8} :catchall_1c

    throw p1
.end method
