.class public final synthetic Lcom/android/server/wm/PersonaActivityHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/QuintPredicate;


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_6

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p0, p2, :cond_6

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez p0, :cond_3

    :cond_2
    if-nez p3, :cond_6

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz p0, :cond_6

    :cond_3
    const/4 p0, -0x1

    if-eq p4, p0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    if-eq p4, p1, :cond_5

    :cond_4
    if-ne p4, p0, :cond_6

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
