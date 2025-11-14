.class public final synthetic Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    iget p0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return-object p1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
