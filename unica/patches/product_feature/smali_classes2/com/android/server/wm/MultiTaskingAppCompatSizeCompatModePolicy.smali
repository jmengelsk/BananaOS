.class public final Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAvoidAppCompatDisplayInsets:Z

.field public mIsInDisplaySizeChanging:Z


# direct methods
.method public static clearSizeCompatModeForAllActivities(Lcom/android/server/wm/Task;ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method
