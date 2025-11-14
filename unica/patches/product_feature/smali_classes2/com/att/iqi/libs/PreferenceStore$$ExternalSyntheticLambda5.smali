.class public final synthetic Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/w3c/dom/NodeList;


# direct methods
.method public synthetic constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;->f$0:Lorg/w3c/dom/NodeList;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;->f$0:Lorg/w3c/dom/NodeList;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
