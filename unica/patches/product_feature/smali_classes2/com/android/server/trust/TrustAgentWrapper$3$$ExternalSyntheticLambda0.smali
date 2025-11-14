.class public final synthetic Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/trust/TrustAgentWrapper$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustAgentWrapper$3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/trust/TrustAgentWrapper$3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/trust/TrustAgentWrapper$3;

    check-cast p1, Landroid/service/trust/GrantTrustResult;

    invoke-virtual {p1}, Landroid/service/trust/GrantTrustResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_29

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v9, Lcom/android/server/trust/TrustAgentWrapper$6;

    invoke-direct {v9, p0}, Lcom/android/server/trust/TrustAgentWrapper$6;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v10

    const/4 v5, 0x2

    const-string/jumbo v8, "TrustAgentWrapper"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_29
    return-void
.end method
