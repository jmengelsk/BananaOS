.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/WindowContainerTransaction$Change;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/window/WindowContainerTransaction$Change;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$0:Landroid/window/WindowContainerTransaction$Change;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$1:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$0:Landroid/window/WindowContainerTransaction$Change;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;->f$1:[I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    aget v0, p0, p1

    or-int/2addr v0, v1

    aput v0, p0, p1

    :cond_1f
    return-void
.end method
