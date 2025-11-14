.class public final Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public mBooleanSuppliers:Ljava/util/List;


# virtual methods
.method public final getAsBoolean()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BooleanSupplier;

    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v2

    if-nez v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method
