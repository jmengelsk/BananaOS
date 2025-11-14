.class Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mToken:Landroid/window/WindowContainerToken;

.field public final mUid:I


# direct methods
.method public constructor <init>(ILandroid/window/WindowContainerToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    return-void
.end method
