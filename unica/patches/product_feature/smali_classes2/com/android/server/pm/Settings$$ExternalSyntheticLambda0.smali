.class public final synthetic Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Settings;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Settings;IJZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings;

    iput p2, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$2:J

    iput-boolean p5, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings;

    iget v1, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$2:J

    iget-boolean p0, p0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    return-void
.end method
