.class public final Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLetterbox:Lcom/android/server/wm/Letterbox;

.field public final synthetic this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    return-void
.end method


# virtual methods
.method public final getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    :cond_1b
    return-void

    :cond_1c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8b

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8b

    if-eq v0, p1, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v2

    if-eq v0, v2, :cond_24

    goto/16 :goto_8b

    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v2

    iget-boolean v3, v0, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    const/4 v4, 0x0

    if-eq v3, v2, :cond_38

    iput-boolean v2, v0, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    goto :goto_58

    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v1

    goto :goto_58

    :cond_45
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v2, v0

    move v3, v4

    :goto_49
    if-ge v3, v2, :cond_57

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_58

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_57
    move v1, v4

    :goto_58
    if-eqz v1, :cond_8b

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mInputWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    if-eqz v0, :cond_7a

    array-length v0, v1

    :goto_69
    if-ge v4, v0, :cond_73

    aget-object v2, v1, v4

    invoke-virtual {v2, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_73
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_7a
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove(Landroid/view/SurfaceControl$Transaction;)V

    array-length p0, v1

    :goto_7e
    if-ge v4, p0, :cond_8b

    aget-object v0, v1, v4

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    :cond_8b
    :goto_8b
    return-void
.end method
