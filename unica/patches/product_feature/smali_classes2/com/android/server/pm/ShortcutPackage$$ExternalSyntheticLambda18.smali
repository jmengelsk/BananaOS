.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:[I

.field public final synthetic f$2:[I

.field public final synthetic f$3:[I

.field public final synthetic f$4:[J


# direct methods
.method public synthetic constructor <init>([I[I[I[I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$0:[I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$2:[I

    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$3:[I

    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$4:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$0:[I

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$2:[I

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$3:[I

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;->f$4:[J

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v5

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, v1, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, v1, v5

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_2

    aget v0, v2, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, v2, v5

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    aget v0, v3, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, v3, v5

    aget-wide v0, p0, v5

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v2, v0

    aput-wide v2, p0, v5

    :cond_3
    return-void
.end method
