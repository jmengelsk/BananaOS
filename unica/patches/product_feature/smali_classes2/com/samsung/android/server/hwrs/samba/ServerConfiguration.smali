.class public final Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final addShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    move-object/from16 v5, p5

    const-string v6, "/data/misc/hwrs/ksmbd/ksmbd.conf"

    const-string/jumbo v0, "addShare - ResName:"

    const-string v1, " ResPath:"

    const-string v2, " UserName:"

    invoke-static {v0, p1, v1, p2, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GroupName:"

    const-string v2, " MaxConnections:"

    invoke-static {v0, p3, v1, p4, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "[HWRS_SYS]ServerManager"

    invoke-static {v0, v5, v7}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1bd

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1bd

    if-eqz p2, :cond_1bd

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1bd

    if-eqz p3, :cond_1bd

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1bd

    const-string/jumbo v0, "root"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bd

    if-eqz p4, :cond_1bd

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1bd

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bd

    if-eqz v5, :cond_1bd

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1bd

    const-string v0, "../"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b2

    const-string v0, "/.."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b2

    const-string v0, "/storage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :try_start_70
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7a} :catch_1a9

    const/4 v0, 0x0

    :cond_7b
    :goto_7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_a5

    const-string/jumbo v9, "["

    if-eqz v2, :cond_dd

    :try_start_84
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    :catchall_a5
    move-exception v0

    move-object p0, v0

    goto/16 :goto_19f

    :cond_a9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7b

    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7b

    const/16 v9, 0x3d

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7b

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catchall {:try_start_84 .. :try_end_dc} :catchall_a5

    goto :goto_7b

    :cond_dd
    :try_start_dd
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_1a9

    new-instance v0, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/hwrs/samba/ServerConfiguration$2;-><init>(Lcom/samsung/android/server/hwrs/samba/ServerConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f3

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    :cond_f3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v8, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_fb
    :try_start_fb
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_105} :catch_196

    :try_start_105
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_182

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_148
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_148

    :catchall_17b
    move-exception v0

    move-object p1, v0

    goto :goto_18c

    :cond_17e
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_181
    .catchall {:try_start_105 .. :try_end_181} :catchall_17b

    goto :goto_10d

    :cond_182
    :try_start_182
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_196

    const-string/jumbo p0, "createDefaultConfigFile success!!!"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_18c
    :try_start_18c
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_18f
    .catchall {:try_start_18c .. :try_end_18f} :catchall_190

    goto :goto_195

    :catchall_190
    move-exception v0

    move-object p0, v0

    :try_start_192
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_195
    throw p1
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_196} :catch_196

    :catch_196
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string/jumbo p1, "saveConfFile failed!!!"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_19f
    :try_start_19f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1a2
    .catchall {:try_start_19f .. :try_end_1a2} :catchall_1a3

    goto :goto_1a8

    :catchall_1a3
    move-exception v0

    move-object p1, v0

    :try_start_1a5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a8
    throw p0
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a9} :catch_1a9

    :catch_1a9
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string/jumbo p1, "loadConfFile failed!!!"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b2
    const-string p0, "Invalid default resource path or prefix!!!"

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1bd
    new-instance p0, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;

    const-string p1, "Invalid arguments!!!"

    invoke-direct {p0, p1}, Lcom/samsung/android/server/hwrs/utils/StorageServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
