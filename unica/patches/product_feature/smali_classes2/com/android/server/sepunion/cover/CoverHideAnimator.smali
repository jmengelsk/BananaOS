.class public Lcom/android/server/sepunion/cover/CoverHideAnimator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field public mCallbackRunnable:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

.field public final mContext:Landroid/content/Context;

.field public mCoverHideView:Landroid/view/View;

.field public final mFadeInAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

.field public final mFadeOutAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

.field public final mWindowLP:Landroid/view/WindowManager$LayoutParams;

.field public final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v0, "clear cover animation"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x7e8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v0, 0x4080008

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    new-instance p1, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    return-void
.end method


# virtual methods
.method public final removeViewFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    return-void
.end method
