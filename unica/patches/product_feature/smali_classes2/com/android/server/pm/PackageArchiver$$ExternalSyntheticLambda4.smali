.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/content/IntentSender;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$4:Landroid/content/IntentSender;

    iput p6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$5:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$4:Landroid/content/IntentSender;

    iget v7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda4;->f$5:I

    iget-object p0, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    move-object v5, v3

    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const v10, 0x1040fdd

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppLabel(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_39

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_3a

    :cond_39
    const/4 v9, 0x0

    :goto_3a
    const-wide/16 v10, 0x0

    if-eqz v9, :cond_43

    invoke-interface {v5, v9, v10, v11, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    goto :goto_45

    :cond_43
    const/16 v12, 0x3e8

    :goto_45
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    if-nez v9, :cond_4c

    goto :goto_4d

    :cond_4c
    move-object v2, v9

    :goto_4d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v9

    const/16 v14, 0x91

    invoke-virtual {v9, v14, v12, v2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v6, 0x0

    :goto_5b
    invoke-virtual {v0, v1, v13, v6}, Lcom/android/server/pm/PackageArchiver;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppIcon(Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x60000000

    iput v1, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-interface {v5, v4, v10, v11, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_6f
    invoke-virtual {v1, v6, v3, v7}, Lcom/android/server/pm/PackageInstallerService;->getExistingDraftSessionIdInternal(ILandroid/content/pm/PackageInstaller$SessionParams;I)I

    move-result v1

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_9d

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7b

    invoke-virtual {v0, v8, v1, v7}, Lcom/android/server/pm/PackageArchiver;->attachListenerToSession(Landroid/content/IntentSender;II)V

    goto :goto_98

    :cond_7b
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {v0, v8, v1, v7}, Lcom/android/server/pm/PackageArchiver;->attachListenerToSession(Landroid/content/IntentSender;II)V

    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/PackageArchiver;I)V

    const v0, 0x1d4c0

    int-to-long v3, v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_9d
    move-exception v0

    move-object p0, v0

    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9d

    throw p0
.end method
