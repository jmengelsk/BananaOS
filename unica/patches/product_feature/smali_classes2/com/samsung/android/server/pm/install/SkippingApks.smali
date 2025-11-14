.class public final Lcom/samsung/android/server/pm/install/SkippingApks;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mSkippingApkList:Ljava/util/ArrayList;


# direct methods
.method public static getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    const-string v0, "FileNotFoundException: "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_17} :catch_68
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_66
    .catchall {:try_start_8 .. :try_end_17} :catchall_64

    :try_start_17
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_49

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37

    goto :goto_49

    :catchall_2e
    move-exception p0

    move-object v2, v3

    goto :goto_7c

    :catch_31
    move-exception p0

    move-object v2, v3

    goto :goto_6a

    :catch_34
    move-exception p0

    move-object v2, v3

    goto :goto_73

    :cond_37
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_49
    :goto_49
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result p0

    if-eqz p0, :cond_5b

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_5a} :catch_34
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_5a} :catch_31
    .catchall {:try_start_17 .. :try_end_5a} :catchall_2e

    goto :goto_49

    :cond_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    return-object v1

    :catch_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    :catchall_64
    move-exception p0

    goto :goto_7c

    :catch_66
    move-exception p0

    goto :goto_6a

    :catch_68
    move-exception p0

    goto :goto_73

    :goto_6a
    :try_start_6a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_64

    if-eqz v2, :cond_7b

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_5f

    goto :goto_7b

    :goto_73
    :try_start_73
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_64

    if-eqz v2, :cond_7b

    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_5f

    :cond_7b
    :goto_7b
    return-object v1

    :goto_7c
    if-eqz v2, :cond_86

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_86
    :goto_86
    throw p0
.end method


# virtual methods
.method public final addSkippingPackage(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method
