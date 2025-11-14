.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->$r8$classId:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v0

    if-eq p0, v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_c

    const/high16 p0, 0x20000000

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    const/high16 p0, 0x40000000    # 2.0f

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_d

    :goto_1
    const/4 p0, -0x1

    goto :goto_3

    :cond_d
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_e

    :goto_2
    const/4 p0, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :goto_3
    return p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, -0x1

    goto :goto_4

    :cond_f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-nez p0, :cond_10

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :goto_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
