.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Landroid/content/pm/ApplicationInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$1:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$6:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$1:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$5:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$6:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v6, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2, v3}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/android/server/pm/PackageArchiver;->createArchiveStateInternal(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/pm/PackageArchiver;->storeArchiveState(Ljava/lang/String;Lcom/android/server/pm/pkg/ArchiveState;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
