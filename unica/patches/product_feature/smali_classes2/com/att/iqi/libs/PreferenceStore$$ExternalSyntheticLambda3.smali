.class public final synthetic Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Lorg/w3c/dom/NodeList;


# direct methods
.method public synthetic constructor <init>(Lorg/w3c/dom/NodeList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;->f$0:Lorg/w3c/dom/NodeList;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;->f$0:Lorg/w3c/dom/NodeList;

    invoke-static {p0}, Lcom/att/iqi/libs/PreferenceStore;->$r8$lambda$9bCT-eyTtSVDy9lg4YAsns_wav0(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
