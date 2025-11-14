.class public final Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;
.super Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/NavBarFadeAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NavBarFadeAnimationController;Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/FadeAnimationController$1;Lcom/android/server/wm/SurfaceAnimationRunner;Z)V

    return-void
.end method


# virtual methods
.method public final shouldDeferAnimationFinish()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$NavFadeAnimationAdapter;->this$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
