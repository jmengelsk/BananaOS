.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;

    check-cast p1, Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda2;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
