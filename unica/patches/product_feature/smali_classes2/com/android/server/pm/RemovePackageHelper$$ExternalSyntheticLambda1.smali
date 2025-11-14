.class public final synthetic Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/RemovePackageHelper;

.field public final synthetic f$1:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/PackageSetting;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/PackageSetting;

    iput p3, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/PackageSetting;

    iget p0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "clearKeystoreData:"

    const-wide/32 v3, 0x40000

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for user: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    iget v1, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/AppDataHelper;->clearKeystoreData(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
