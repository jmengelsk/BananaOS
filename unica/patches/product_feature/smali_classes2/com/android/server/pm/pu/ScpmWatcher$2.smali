.class public final Lcom/android/server/pm/pu/ScpmWatcher$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/ScpmWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/ScpmWatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/ScpmWatcher$2;->this$0:Lcom/android/server/pm/pu/ScpmWatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/pu/ScpmWatcher$2;->this$0:Lcom/android/server/pm/pu/ScpmWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "PU_ScpmWatcher"

    const-string/jumbo v2, "Polling SCPM Policies"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/pm/pu/ScpmWatcher;->SCPM_POLICIES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/pu/ScpmWatcher;->onPolicy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pu/ScpmWatcher$2;->this$0:Lcom/android/server/pm/pu/ScpmWatcher;

    iget-object v0, v0, Lcom/android/server/pm/pu/ScpmWatcher;->mScpmHandler:Landroid/os/Handler;

    sget-wide v1, Lcom/android/server/pm/pu/ScpmWatcher;->SCPM_POLLING_INTERVAL_MS:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
