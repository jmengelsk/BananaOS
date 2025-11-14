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
    .locals 11

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

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string p1, "Failed to make scpm dir"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->getPropVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->getDefaultVersion()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v4, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->VERSION_NAME_TAG:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v4, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v7, v4, v0

    if-gtz v7, :cond_3

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto/16 :goto_9

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :try_start_5
    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->PACKAGE_NAME_TAG:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v8, :cond_3

    :try_start_6
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->getPackageNameInPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->convertBase64String(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v7

    :try_start_7
    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed line="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    invoke-virtual {p1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_6
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

    goto :goto_9

    :cond_7
    :try_start_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to rename temp file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_4
    :try_start_b
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    :try_start_c
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_6
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_8
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to update"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    goto/16 :goto_2

    :cond_8
    :goto_9
    return v2

    :catchall_6
    move-exception p1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->TEMP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_9
    throw p1
.end method

.method public constructor <init>()V
    .locals 2

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
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    :goto_0
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
