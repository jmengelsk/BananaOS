.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/BackNavigationController;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/BackNavigationController;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackNavigationController;->onBackNavigationDone(ILandroid/os/Bundle;)V

    return-void
.end method
