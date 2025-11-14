.class public final synthetic Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/prediction/AppTargetPredictor;Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    iput-object p2, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/prediction/AppTargetPredictor;

    iget-object v1, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/people/prediction/AppTargetPredictor;->sortTargets(Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V

    return-void
.end method
