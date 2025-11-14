.class public final synthetic Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;

.field public final synthetic f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    iput-object p2, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/server/wm/DeviceStateController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
