.class public final synthetic Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
