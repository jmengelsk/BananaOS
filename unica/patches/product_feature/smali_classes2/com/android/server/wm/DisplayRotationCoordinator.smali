.class public final Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCallbackDisplayId:I

.field public mDefaultDisplayCurrentRotation:I

.field public mDefaultDisplayDefaultRotation:I

.field mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;


# direct methods
.method public static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-nez p0, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    return v0

    :cond_13
    return v1
.end method
