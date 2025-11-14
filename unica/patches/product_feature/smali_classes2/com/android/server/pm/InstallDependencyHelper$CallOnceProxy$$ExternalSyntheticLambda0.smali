.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerException;

    iget-object v0, v0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Lcom/android/server/pm/PackageInstallerSession$6;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$6;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
