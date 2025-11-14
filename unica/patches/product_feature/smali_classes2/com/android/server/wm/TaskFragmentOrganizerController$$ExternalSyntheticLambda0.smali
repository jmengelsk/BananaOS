.class public final synthetic Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Lcom/android/server/wm/TaskFragment;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;->f$0:[Lcom/android/server/wm/TaskFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$$ExternalSyntheticLambda0;->f$0:[Lcom/android/server/wm/TaskFragment;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aput-object p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
