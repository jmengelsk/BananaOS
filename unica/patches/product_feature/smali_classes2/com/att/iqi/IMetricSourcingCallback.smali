.class public interface abstract Lcom/att/iqi/IMetricSourcingCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.att.iqi.IMetricSourcingCallback"


# virtual methods
.method public abstract onMetricSourced(Lcom/att/iqi/lib/Metric$ID;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
