.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Landroid/util/ArraySet;

.field public final synthetic f$3:Landroid/content/ComponentName;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$0:J

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$1:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$3:Landroid/content/ComponentName;

    iput-boolean p6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$4:Z

    iput-boolean p7, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$5:Z

    iput-boolean p8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$6:Z

    iput-boolean p9, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$7:Z

    iput-boolean p10, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$8:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 11

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$0:J

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$1:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$2:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$3:Landroid/content/ComponentName;

    iget-boolean v5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$4:Z

    iget-boolean v6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$5:Z

    iget-boolean v7, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$6:Z

    iget-boolean v8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$7:Z

    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;->f$8:Z

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v9

    cmp-long v0, v9, v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
