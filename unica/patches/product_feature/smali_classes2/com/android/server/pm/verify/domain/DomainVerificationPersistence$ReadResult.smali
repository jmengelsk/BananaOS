.class public final Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final active:Landroid/util/ArrayMap;

.field public final restored:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->active:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;->restored:Landroid/util/ArrayMap;

    return-void
.end method
