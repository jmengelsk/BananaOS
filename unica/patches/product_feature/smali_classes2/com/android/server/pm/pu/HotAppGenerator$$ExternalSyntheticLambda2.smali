.class public final synthetic Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Ljava/util/Map;

.field public final synthetic f$5:Ljava/util/Map;

.field public final synthetic f$6:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iput p2, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$4:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$5:Ljava/util/Map;

    iput-object p7, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    iget v1, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$4:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$5:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppGenerator$$ExternalSyntheticLambda2;->f$6:Ljava/util/Map;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    new-instance v6, Lcom/android/server/pm/pu/App;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v7, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v7, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v7, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, v7, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, v7, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v7, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/pu/App;-><init>(Ljava/lang/String;IIIIII)V

    return-object v6
.end method
