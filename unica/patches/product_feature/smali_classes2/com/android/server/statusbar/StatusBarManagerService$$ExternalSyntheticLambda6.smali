.class public final synthetic Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$3:I

    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;->f$4:Z

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, v1, v2, v3, p0}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
