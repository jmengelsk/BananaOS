.class public final synthetic Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/window/DesktopModeFlags;->EXCLUDE_CAPTION_FROM_APP_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {p1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;

    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_3

    if-gt v1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
