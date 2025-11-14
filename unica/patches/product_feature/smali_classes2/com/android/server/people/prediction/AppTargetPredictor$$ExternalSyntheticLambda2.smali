.class public final synthetic Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/prediction/AppTargetPredictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    invoke-virtual {p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->predictTargets()V

    return-void
.end method
