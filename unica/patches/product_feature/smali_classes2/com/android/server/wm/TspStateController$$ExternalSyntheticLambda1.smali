.class public final synthetic Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TspStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TspStateController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TspStateController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/TspStateController;->writeDeadzoneHoleCmd(III)V

    return-void
.end method
