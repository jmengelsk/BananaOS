.class public abstract Lcom/android/server/wm/DesktopCompatPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static isDesktopSizeCompatMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isFullscreenBySystemModal(Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldExcludeCaptionFromAppBounds(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    if-nez v4, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    move p0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    move p0, v3

    :goto_1a
    invoke-static {v2, v0, p0}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result p0

    if-eqz p0, :cond_21

    return v3

    :cond_21
    return v1
.end method

.method public static supportDesktopCompat(Lcom/android/server/wm/Task;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p0

    if-eqz p0, :cond_23

    return v1

    :cond_23
    return v0
.end method
