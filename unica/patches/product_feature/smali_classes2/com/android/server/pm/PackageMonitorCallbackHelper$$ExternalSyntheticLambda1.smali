.class public final synthetic Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/IRemoteCallback;

    check-cast p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    iget p2, p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
