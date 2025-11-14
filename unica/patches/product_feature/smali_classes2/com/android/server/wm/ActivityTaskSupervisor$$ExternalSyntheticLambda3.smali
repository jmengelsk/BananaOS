.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/WindowProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-static {p0, v0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(ILjava/lang/String;)V

    return-void
.end method
