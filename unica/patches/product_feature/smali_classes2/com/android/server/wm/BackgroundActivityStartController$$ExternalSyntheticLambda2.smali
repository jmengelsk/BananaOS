.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iput p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    return-void
.end method
