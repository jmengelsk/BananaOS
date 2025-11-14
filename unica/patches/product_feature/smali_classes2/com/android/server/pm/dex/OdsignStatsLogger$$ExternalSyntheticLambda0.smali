.class public final synthetic Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .registers 13

    const-string p0, "/data/misc/odsign/metrics/odsign-metrics.txt"

    const-string v0, "1"

    const-string/jumbo v1, "OdsignStatsLogger"

    :try_start_7
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "Failed to delete metrics file"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :catch_1c
    move-exception p0

    goto/16 :goto_104

    :cond_1f
    :goto_1f
    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    if-ge v4, v2, :cond_10a

    aget-object v5, p0, v4

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_fb

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v7, v8, :cond_3e

    goto/16 :goto_fb

    :cond_3e
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x3510781e

    if-eq v9, v10, :cond_5a

    const v10, 0x3d07e991

    if-eq v9, v10, :cond_4f

    goto :goto_65

    :cond_4f
    const-string/jumbo v9, "comp_os_artifacts_check_record"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    move v7, v3

    goto :goto_66

    :cond_5a
    const-string/jumbo v9, "odsign_record"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_61} :catch_10a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_61} :catch_1c

    if-eqz v7, :cond_65

    move v7, v8

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v7, -0x1

    :goto_66
    const/4 v9, 0x2

    const-string v10, "\'"

    if-eqz v7, :cond_c5

    if-eq v7, v8, :cond_87

    :try_start_6d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Malformed metrics line \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    :cond_87
    array-length v7, v6
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_88} :catch_10a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_88} :catch_1c

    const-string/jumbo v11, "Malformed odsign metrics line \'"

    if-eq v7, v9, :cond_a3

    :try_start_8d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_a2} :catch_10a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a2} :catch_1c

    goto :goto_100

    :cond_a3
    :try_start_a3
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x224

    invoke-static {v7, v6}, Lcom/android/internal/art/ArtStatsLog;->write(II)V
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_ae} :catch_af
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_ae} :catch_10a
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ae} :catch_1c

    goto :goto_100

    :catch_af
    :try_start_af
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :cond_c5
    array-length v7, v6

    const/4 v11, 0x4

    if-eq v7, v11, :cond_e2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Malformed CompOS metrics line \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :cond_e2
    aget-object v5, v6, v8

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    aget-object v7, v6, v9

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    aget-object v6, v6, v8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v8, 0x1a3

    invoke-static {v8, v5, v7, v6}, Lcom/android/internal/art/ArtStatsLog;->write(IZZZ)V

    goto :goto_100

    :cond_fb
    :goto_fb
    const-string v5, "Empty metrics line"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_100} :catch_10a
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_100} :catch_1c

    :goto_100
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28

    :goto_104
    const-string/jumbo v0, "Reading metrics file failed"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_10a
    :cond_10a
    return-void
.end method
