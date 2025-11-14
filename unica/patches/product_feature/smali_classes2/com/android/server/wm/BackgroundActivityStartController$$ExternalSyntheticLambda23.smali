.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final synthetic f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

.field public final synthetic f$2:[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

    iput-object p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$2:[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    iput p4, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$2:[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;->f$3:I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aget-object v3, v2, v1

    invoke-virtual {v0, p1, p0, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    aput-object p0, v2, v1

    :cond_0
    return-void
.end method
