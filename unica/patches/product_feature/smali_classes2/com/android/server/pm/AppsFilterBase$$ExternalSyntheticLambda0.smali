.class public final synthetic Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda6;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[ILcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda6;

    return-void
.end method


# virtual methods
.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda6;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$1:[I

    array-length v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :goto_0
    if-nez v6, :cond_0

    if-ge v7, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v8, p0, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v8, v9, v10}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda6;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[app id "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not installed]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    array-length p0, v6

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    aget-object p0, v6, v5

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-static {v1, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-static {p0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0

    :cond_3
    return-object v2
.end method
