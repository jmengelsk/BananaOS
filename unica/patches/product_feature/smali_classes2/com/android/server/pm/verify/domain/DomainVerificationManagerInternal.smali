.class public interface abstract Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DISABLED_ID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    return-void
.end method
