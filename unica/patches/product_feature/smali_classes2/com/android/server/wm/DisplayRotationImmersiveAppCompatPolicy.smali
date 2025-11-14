.class public final Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final isRotationLockEnforcedLocked(I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_5a

    :cond_19
    iget v3, v3, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    and-int/2addr v3, v4

    if-nez v3, :cond_5a

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-eq v3, v1, :cond_32

    goto :goto_5a

    :cond_32
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v3

    if-eqz v3, :cond_39

    return v2

    :cond_39
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v3

    if-nez v3, :cond_40

    return v2

    :cond_40
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    move p0, v1

    goto :goto_57

    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p0

    if-eqz p0, :cond_56

    const/4 p0, 0x2

    goto :goto_57

    :cond_56
    move p0, v2

    :goto_57
    if-eq v0, p0, :cond_5a

    return v1

    :cond_5a
    :goto_5a
    return v2
.end method
