.class public abstract Lvendor/samsung/hardware/light/ISehLights$Stub;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lvendor/samsung/hardware/light/ISehLights;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/light/ISehLights;

    if-eqz v1, :cond_1

    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;

    return-object v0

    :cond_1
    new-instance v0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
