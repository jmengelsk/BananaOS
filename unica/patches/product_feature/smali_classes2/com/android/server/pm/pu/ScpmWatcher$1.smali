.class public final Lcom/android/server/pm/pu/ScpmWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/ScpmWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/ScpmWatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/pu/ScpmWatcher$1;->this$0:Lcom/android/server/pm/pu/ScpmWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string/jumbo p1, "PU_ScpmWatcher"

    if-nez p2, :cond_b

    const-string p0, "Got null intent"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.ACTION_PU_DEBUG_SCPM_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo p0, "Unexpected intent: "

    invoke-static {p0, v0, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    const-string/jumbo v0, "policy"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/pu/ScpmWatcher;->SCPM_POLICIES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string/jumbo p0, "Unexpected policy: "

    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_46
    const-string/jumbo v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5b

    const-string/jumbo p2, "Requesting data from SCPM core for policy "

    invoke-static {p2, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/pu/ScpmWatcher$1;->this$0:Lcom/android/server/pm/pu/ScpmWatcher;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pu/ScpmWatcher;->onPolicy(Ljava/lang/String;)V

    return-void

    :cond_5b
    iget-object p0, p0, Lcom/android/server/pm/pu/ScpmWatcher$1;->this$0:Lcom/android/server/pm/pu/ScpmWatcher;

    iget-object p0, p0, Lcom/android/server/pm/pu/ScpmWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/pu/ProfileUtilizationService;->onScpmPolicy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
