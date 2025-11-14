.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/InstallRequest;

    iget v1, v0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(Ljava/util/List;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(Ljava/util/List;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v1, 0x40000

    :try_start_0
    const-string/jumbo v3, "installApexPackages"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallingSession;->installApexPackages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
