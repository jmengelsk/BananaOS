.class public Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.super Lcom/android/server/wm/LocalAnimationAdapter;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mShow:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-boolean p3, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
