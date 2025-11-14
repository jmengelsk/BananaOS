.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Lcom/android/server/pm/PackageInstallerSession$6;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession$6;->onResult(Ljava/lang/Object;)V

    return-void
.end method
