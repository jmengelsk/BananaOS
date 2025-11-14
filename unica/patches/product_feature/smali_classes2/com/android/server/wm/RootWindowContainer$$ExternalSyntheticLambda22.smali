.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$4:Landroid/app/ActivityOptions;

.field public final synthetic f$5:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$1:[Z

    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$3:Lcom/android/server/wm/ActivityRecord;

    iput-object p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$4:Landroid/app/ActivityOptions;

    iput-object p6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$5:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$1:[Z

    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$3:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$4:Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;->f$5:Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v7

    if-eqz v7, :cond_40

    if-nez v6, :cond_1c

    goto :goto_40

    :cond_1c
    if-ne p1, v0, :cond_24

    aget-boolean p0, v1, v5

    or-int/2addr p0, v2

    aput-boolean p0, v1, v5

    return-void

    :cond_24
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_37

    if-ne v6, v3, :cond_37

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_37
    aget-boolean p1, v1, v5

    invoke-virtual {v6, p0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    or-int/2addr p0, p1

    aput-boolean p0, v1, v5

    :cond_40
    :goto_40
    return-void
.end method
