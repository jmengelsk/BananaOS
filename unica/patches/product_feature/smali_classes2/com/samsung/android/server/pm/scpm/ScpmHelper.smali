.class public abstract Lcom/samsung/android/server/pm/scpm/ScpmHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public FILE_PATH:Ljava/lang/String;

.field public PACKAGE_NAME_TAG:Ljava/lang/String;

.field public final SCPM_DIR_PATH:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field public TEMP_FILE_PATH:Ljava/lang/String;

.field public final VERSION_NAME_TAG:Ljava/lang/String;

.field public final VERSION_PATTERN:Ljava/util/regex/Pattern;

.field public final mCallBack:Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mcopyFromScpm(Lcom/samsung/android/server/pm/scpm/ScpmHelper;Ljava/io/FileDescriptor;)Z
    .registers 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string p1, "Failed to make scpm dir"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->getPropVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->getDefaultVersion()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :try_start_34
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_c0

    :try_start_3e
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_c3

    const-wide/16 v4, 0x0

    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_fd

    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->VERSION_NAME_TAG:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c9

    iget-object v4, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_78

    :cond_77
    const/4 v4, 0x0

    :goto_78
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v7, v4, v0

    if-gtz v7, :cond_f5

    iget-object v6, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping SCPM update: Current version ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is newer than update version ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_4c .. :try_end_a8} :catchall_c6

    :try_start_a8
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_c3

    :try_start_ab
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_c0

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_17a

    :goto_bb
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto/16 :goto_17a

    :catchall_c0
    move-exception p1

    goto/16 :goto_164

    :catchall_c3
    move-exception p1

    goto/16 :goto_15b

    :catchall_c6
    move-exception v0

    goto/16 :goto_152

    :cond_c9
    :try_start_c9
    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->PACKAGE_NAME_TAG:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_c6

    if-eqz v8, :cond_f5

    :try_start_d1
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->getPackageNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_dd
    .catchall {:try_start_d1 .. :try_end_dd} :catchall_de

    goto :goto_f5

    :catchall_de
    move-exception v7

    :try_start_df
    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed line="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f5
    :goto_f5
    invoke-virtual {p1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_4c

    :cond_fd
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_110

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_110
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_11b
    .catchall {:try_start_df .. :try_end_11b} :catchall_c6

    if-eqz v6, :cond_14a

    :try_start_11d
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_c3

    :try_start_120
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_c0

    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_133
    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "Update Success. newVersion="

    const-string v2, ", oldVersion="

    invoke-static {p1, v4, v5, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    goto :goto_17a

    :cond_14a
    :try_start_14a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to rename temp file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_c6

    :goto_152
    :try_start_152
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_156

    goto :goto_15a

    :catchall_156
    move-exception p1

    :try_start_157
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15a
    throw v0
    :try_end_15b
    .catchall {:try_start_157 .. :try_end_15b} :catchall_c3

    :goto_15b
    :try_start_15b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_15f

    goto :goto_163

    :catchall_15f
    move-exception v0

    :try_start_160
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_163
    throw p1
    :try_end_164
    .catchall {:try_start_160 .. :try_end_164} :catchall_c0

    :goto_164
    :try_start_164
    iget-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to update"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16b
    .catchall {:try_start_164 .. :try_end_16b} :catchall_17b

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_17a

    goto/16 :goto_bb

    :cond_17a
    :goto_17a
    return v2

    :catchall_17b
    move-exception p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18c
    throw p1
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/scpm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->SCPM_DIR_PATH:Ljava/lang/String;

    const-string/jumbo v0, "version name"

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->VERSION_NAME_TAG:Ljava/lang/String;

    const-string/jumbo v0, "name=\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;-><init>(Lcom/samsung/android/server/pm/scpm/ScpmHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->mCallBack:Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;

    return-void
.end method

.method public static convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    goto :goto_1a

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    :goto_1a
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract getDefaultVersion()J
.end method

.method public abstract getPackageNameInPattern(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPropVersionName()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/lang/String;Z)V
.end method
