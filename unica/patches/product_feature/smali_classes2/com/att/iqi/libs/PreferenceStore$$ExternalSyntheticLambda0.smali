.class public final synthetic Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/libs/PreferenceStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;->f$0:Lcom/att/iqi/libs/PreferenceStore;

    iput-object p2, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;->f$0:Lcom/att/iqi/libs/PreferenceStore;

    iget-object v1, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/att/iqi/libs/PreferenceStore;->$r8$lambda$MAo0EmtvXoxTtgWq7hvlScebVqU(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V

    return-void
.end method
