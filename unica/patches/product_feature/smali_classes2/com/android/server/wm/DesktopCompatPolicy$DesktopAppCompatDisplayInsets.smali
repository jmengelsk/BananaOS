.class public final Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;
.super Lcom/android/server/wm/AppCompatDisplayInsets;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayId:I

.field public final mHeight:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v1, v1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/server/wm/AppCompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->mDisplayId:I

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->mWidth:I

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput p1, p0, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->mHeight:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "DesktopAppCompatDisplayInsets:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mDisplayId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->mDisplayId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", LandscapeSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, ", PortraitSize="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getFrameByOrientation(ILandroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->mHeight:I

    invoke-static {p2, p1, v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDesktopCompatContainerBounds(Landroid/graphics/Rect;III)V

    return-void
.end method
