.class public final Lcom/android/server/pm/CleanUpArgs;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCodeFile:Ljava/io/File;

.field public final mInstructionSets:[Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    return-void
.end method
