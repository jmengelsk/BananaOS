.class public final synthetic Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/hint/HintManagerService$BinderService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/hint/HintManagerService$BinderService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/hint/HintManagerService$BinderService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>()V

    return-object p0
.end method
