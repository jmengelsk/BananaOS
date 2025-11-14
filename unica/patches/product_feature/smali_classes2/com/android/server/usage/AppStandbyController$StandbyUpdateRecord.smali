.class public final Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sPool:Lcom/android/server/usage/AppStandbyController$Pool;


# instance fields
.field public bucket:I

.field public isUserInteraction:Z

.field public packageName:Ljava/lang/String;

.field public reason:I

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/usage/AppStandbyController$Pool;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppStandbyController$Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    return-void
.end method
