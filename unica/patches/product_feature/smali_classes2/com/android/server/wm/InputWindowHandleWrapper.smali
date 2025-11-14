.class public final Lcom/android/server/wm/InputWindowHandleWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mChanged:Z

.field public final mHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Landroid/view/InputWindowHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    return-void
.end method


# virtual methods
.method public final setFocusable(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ne v1, p1, :cond_f

    return-void

    :cond_f
    xor-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    iput-boolean v3, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public final setInputConfigMasked(II)V
    .registers 6

    and-int/2addr p1, p2

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int v2, v1, p2

    if-ne p1, v2, :cond_a

    return-void

    :cond_a
    not-int p2, p2

    and-int/2addr p2, v1

    or-int/2addr p1, p2

    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public final setOneHandSpecs(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_15

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_15

    iget v1, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_15

    return-void

    :cond_15
    iput p1, v0, Landroid/view/InputWindowHandle;->oneHandOffsetX:F

    iput p2, v0, Landroid/view/InputWindowHandle;->oneHandOffsetY:F

    iput p3, v0, Landroid/view/InputWindowHandle;->oneHandScale:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public final setToken(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_7

    return-void

    :cond_7
    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
