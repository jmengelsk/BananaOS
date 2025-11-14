.class public final Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    return-void
.end method


# virtual methods
.method public final dumpAll(Ljava/io/PrintWriter;)V
    .registers 8

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v2, "shortcut_dump"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_7d

    :cond_25
    new-instance v0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p0

    :goto_32
    if-ge v1, v0, :cond_8c

    aget-object v2, p0, v1

    const-string v3, "*** Dumping: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "mtime: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_62} :catch_83
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_83

    :goto_62
    :try_start_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_6c

    goto :goto_62

    :catchall_6c
    move-exception p0

    goto :goto_74

    :cond_6e
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_71} :catch_83
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_83

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :goto_74
    :try_start_74
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p1

    :try_start_79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p0

    :cond_7d
    :goto_7d
    const-string p0, "  No dump files found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_82} :catch_83
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_82} :catch_83

    return-void

    :catch_83
    move-exception p0

    const-string/jumbo p1, "ShortcutService"

    const-string v0, "Failed to print dump files"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    return-void
.end method

.method public final save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .registers 8

    const-string/jumbo v0, "ShortcutService"

    const-string v1, "Failed to create directory: "

    const/4 v2, 0x0

    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v4, "shortcut_dump"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_2d
    move-exception p0

    goto :goto_55

    :cond_2f
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_43} :catch_2d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_43} :catch_2d

    :try_start_43
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4b

    :try_start_46
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_2d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_2d

    const/4 p0, 0x1

    return p0

    :catchall_4b
    move-exception p0

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception p2

    :try_start_51
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_54
    throw p0
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_55} :catch_2d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_55} :catch_2d

    :goto_55
    const-string p2, "Failed to create dump file: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
