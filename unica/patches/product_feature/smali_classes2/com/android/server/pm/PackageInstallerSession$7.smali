.class public final Lcom/android/server/pm/PackageInstallerSession$7;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$future:Ljava/util/concurrent/CompletableFuture;

    new-instance p2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p2, p0, p4}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$future:Ljava/util/concurrent/CompletableFuture;

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p1, p2, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
