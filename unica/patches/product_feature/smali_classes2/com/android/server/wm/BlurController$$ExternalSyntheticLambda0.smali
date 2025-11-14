.class public final synthetic Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BlurController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BlurController;

    return-void
.end method


# virtual methods
.method public final onThermalStatusChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BlurController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method
