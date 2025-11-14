.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RootDisplayArea;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RootDisplayArea;

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_b

    goto :goto_14

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eq v0, p0, :cond_16

    if-ne v0, p1, :cond_14

    goto :goto_16

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0

    :cond_16
    :goto_16
    return-object p1
.end method
