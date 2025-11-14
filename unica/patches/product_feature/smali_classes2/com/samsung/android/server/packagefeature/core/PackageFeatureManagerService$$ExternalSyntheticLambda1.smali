.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/corescpm/ScpmController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/corescpm/ScpmController;

    check-cast p1, Ljava/lang/String;

    check-cast p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method
