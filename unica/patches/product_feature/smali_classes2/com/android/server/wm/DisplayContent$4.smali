.class public final Lcom/android/server/wm/DisplayContent$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public behindTopWindow:Z

.field public final synthetic val$searchBehind:Lcom/android/server/wm/WindowState;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    iput p2, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_2f

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    return v2

    :cond_f
    iget v0, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1b

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_2f

    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget p0, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p0, :cond_2f

    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return v2
.end method
