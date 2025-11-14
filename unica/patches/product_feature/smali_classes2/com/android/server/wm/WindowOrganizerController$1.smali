.class public final Lcom/android/server/wm/WindowOrganizerController$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public final synthetic val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;


# direct methods
.method public constructor <init>(Landroid/window/WindowContainerTransaction$ContainerChange;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getChange()Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/window/WindowContainerTransaction$Change;

    const/4 p0, 0x0

    return-object p0
.end method
