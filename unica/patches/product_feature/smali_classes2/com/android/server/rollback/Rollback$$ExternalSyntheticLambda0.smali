.class public final synthetic Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/Rollback;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/IntentSender;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/Rollback;

    iput-object p2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    iput-object p4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/Rollback;

    iget-object v3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    iget-object v5, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    new-instance v0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    iget-object p0, v1, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
