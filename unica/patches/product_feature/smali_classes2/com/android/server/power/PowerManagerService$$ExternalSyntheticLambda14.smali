.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/PowerManagerService;

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/PowerManagerService;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method
