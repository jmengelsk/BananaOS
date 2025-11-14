.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

.field public final synthetic f$1:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/zip/ZipOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/zip/ZipOutputStream;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/InputStream;

    const-string v1, "FS"

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    sget v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$clinit:I

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p2, Lcom/android/internal/util/SizedInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p2, v1, v2, v3}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p2, p0}, Lcom/android/internal/util/SizedInputStream;->transferTo(Ljava/io/OutputStream;)J

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p2

    const-string v0, "Failed to output "

    const-string v1, " data to shell: "

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method
