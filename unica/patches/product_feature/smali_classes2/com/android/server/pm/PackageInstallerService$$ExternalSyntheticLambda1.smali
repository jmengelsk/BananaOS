.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Landroid/content/pm/PackageInstaller$SessionParams;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

.field public final synthetic f$5:Landroid/content/IntentSender;

.field public final synthetic f$6:Landroid/content/pm/ArchivedPackageParcel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;Landroid/content/IntentSender;Landroid/content/pm/ArchivedPackageParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$5:Landroid/content/IntentSender;

    iput-object p7, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$6:Landroid/content/pm/ArchivedPackageParcel;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/PackageInstallerService;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageInstaller$SessionParams;

    move-object v3, v2

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$3:I

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$5:Landroid/content/IntentSender;

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;->f$6:Landroid/content/pm/ArchivedPackageParcel;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, v3

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v12, "base"

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v15

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/PackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V

    const/4 v0, 0x0

    invoke-virtual {v10, v7, v0}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    const-string/jumbo v0, "PackageInstaller"

    const-string v1, "Installed archived app %s."

    iget-object v2, v8, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v10}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v10

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/server/pm/PackageInstallerSession;->close()V

    :cond_0
    throw v0
.end method
