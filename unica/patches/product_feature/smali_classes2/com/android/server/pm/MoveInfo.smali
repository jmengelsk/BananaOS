.class public final Lcom/android/server/pm/MoveInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppId:I

.field public final mFromCodePath:Ljava/lang/String;

.field public final mFromUuid:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mSeInfo:Ljava/lang/String;

.field public final mTargetSdkVersion:I

.field public final mToUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iput-object p5, p0, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iput-object p7, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    return-void
.end method
