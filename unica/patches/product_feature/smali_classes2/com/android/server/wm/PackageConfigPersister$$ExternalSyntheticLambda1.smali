.class public final synthetic Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    check-cast p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    iget-object p1, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    iget p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
