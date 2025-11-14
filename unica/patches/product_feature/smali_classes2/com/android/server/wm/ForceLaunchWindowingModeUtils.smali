.class public abstract Lcom/android/server/wm/ForceLaunchWindowingModeUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    :cond_d
    if-eqz p1, :cond_37

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p0

    return p0

    :cond_28
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_36

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-nez p0, :cond_36

    return p2

    :cond_36
    return v0

    :cond_37
    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p0

    return p0

    :cond_4e
    return v0
.end method
