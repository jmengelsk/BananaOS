.class public final synthetic Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda2;->f$0:Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;

    invoke-interface {p0}, Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;->onProfileChanged()V

    return-void
.end method
