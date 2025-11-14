.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;

.field public final synthetic f$1:[Landroid/app/slice/SliceSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/slice/PinnedSliceState;

    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$1:[Landroid/app/slice/SliceSpec;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/slice/PinnedSliceState;

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$1:[Landroid/app/slice/SliceSpec;

    check-cast p1, Landroid/app/slice/SliceSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x0

    if-ge v2, v1, :cond_22

    aget-object v4, p0, v2

    invoke-virtual {v4}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_23

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_22
    move-object v4, v3

    :goto_23
    if-nez v4, :cond_26

    return-object v3

    :cond_26
    invoke-virtual {v4}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v0

    if-ge p0, v0, :cond_31

    return-object v4

    :cond_31
    return-object p1
.end method
