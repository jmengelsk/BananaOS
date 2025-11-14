.class public final Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;
.super Landroid/os/IUserRestrictionsListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

.field public final synthetic val$mainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    iput-object p2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/IUserRestrictionsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
