.class public final Lcom/android/server/vr/Vr2dDisplay$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPersistentVrStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay$1;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    :cond_0
    return-void
.end method
