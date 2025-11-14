.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    return-void
.end method
