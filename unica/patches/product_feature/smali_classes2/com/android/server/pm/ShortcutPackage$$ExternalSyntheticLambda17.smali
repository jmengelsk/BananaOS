.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$0:J

    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$0:J

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;->f$1:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    return-void
.end method
