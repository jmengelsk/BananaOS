.class public final Lcom/android/server/pm/PackageInstallerSession$6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 2

    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->handleDependencyResolutionFailure(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$6;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    return-void
.end method
