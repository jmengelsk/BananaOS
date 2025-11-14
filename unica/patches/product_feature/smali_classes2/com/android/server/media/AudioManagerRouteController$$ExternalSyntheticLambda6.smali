.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    return-void
.end method


# virtual methods
.method public final onDevicesForAttributesChanged(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    :cond_0
    return-void
.end method
