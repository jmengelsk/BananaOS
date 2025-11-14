.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    packed-switch v0, :pswitch_data_66

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide/32 v1, 0x40000

    const-string/jumbo v3, "queueInstall"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v0, "start"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_2a
    if-ge v5, v0, :cond_42

    iget-object v6, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallingSession;

    new-instance v7, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v7, v6}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v7}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_42
    :goto_42
    if-ge v4, v0, :cond_58

    iget-object v5, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallingSession;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_58
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :pswitch_5c  #0x0
    new-instance v0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;I)V

    invoke-virtual {v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->run()V

    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5c  #00000000
    .end packed-switch
.end method
