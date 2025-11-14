.class public final synthetic Lcom/android/server/pm/pu/App$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptStatus$DexContainerFileDexoptStatus;->getDexContainerFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
