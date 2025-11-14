.class public final synthetic Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AsecInstallHelper$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallHelper$3;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    iput p4, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallHelper$3;

    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    iget p0, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    iget-object v3, v0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/AsecInstallHelper;->updateMediaStatus(ILjava/util/Set;)V

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallHelper;->setAvailableMountSync(Z)V

    const-string/jumbo p0, "PackageManager"

    const-string/jumbo v0, "setAvailableMountSync false"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
