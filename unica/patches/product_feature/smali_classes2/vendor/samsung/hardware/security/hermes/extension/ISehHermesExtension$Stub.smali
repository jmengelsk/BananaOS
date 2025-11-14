.class public abstract Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;
    .registers 3

    sget-object v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v1, :cond_f

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    return-object v0

    :cond_f
    new-instance v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
