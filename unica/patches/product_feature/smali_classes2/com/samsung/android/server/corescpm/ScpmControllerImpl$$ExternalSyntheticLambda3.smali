.class public final synthetic Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

.field public final synthetic f$1:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;

    iget-object v0, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    iget-object v0, v0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
