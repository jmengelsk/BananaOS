.class public final synthetic Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;->f$0:F

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    check-cast p2, Lcom/android/server/wm/WindowState;

    sget v0, Lcom/android/server/wm/Session;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p0, p2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_0

    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
