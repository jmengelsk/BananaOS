.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    sget-object p1, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;->run()V

    return-void
.end method
