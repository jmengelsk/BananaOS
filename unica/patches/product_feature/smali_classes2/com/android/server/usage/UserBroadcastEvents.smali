.class public final Lcom/android/server/usage/UserBroadcastEvents;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBroadcastEvents:Landroid/util/ArrayMap;


# virtual methods
.method public final clear(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/usage/UserBroadcastEvents;->mBroadcastEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_2a

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/BroadcastEvent;

    iget v3, v3, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    if-ne v3, p1, :cond_27

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2d
    return-void
.end method
