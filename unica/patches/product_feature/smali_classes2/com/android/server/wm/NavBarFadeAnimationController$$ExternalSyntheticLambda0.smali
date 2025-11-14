.class public final synthetic Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/NavBarFadeAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/NavBarFadeAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V

    return-void
.end method
