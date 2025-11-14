.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->$r8$classId:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    packed-switch p0, :pswitch_data_124

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_47

    :cond_18
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v0

    if-eq p0, v0, :cond_2c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, -0x1

    goto :goto_47

    :cond_2a
    const/4 p0, 0x1

    goto :goto_47

    :cond_2c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_47

    :cond_3b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_47
    return p0

    :pswitch_48  #0x2
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_56

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_d6

    :cond_56
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-nez p0, :cond_64

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_64

    goto/16 :goto_de

    :cond_64
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_7e

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_7e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto/16 :goto_ec

    :cond_7e
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_85

    goto :goto_d6

    :cond_85
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    if-eqz p0, :cond_8c

    goto :goto_de

    :cond_8c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_d0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_d0

    const/high16 p0, 0x20000000

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_d6

    :cond_a7
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_b4

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_b4

    goto :goto_de

    :cond_b4
    const/high16 p0, 0x40000000  # 2.0f

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_c3

    goto :goto_d6

    :cond_c3
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_d0

    goto :goto_de

    :cond_d0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_d8

    :goto_d6
    const/4 p0, -0x1

    goto :goto_ec

    :cond_d8
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    if-eqz p0, :cond_e0

    :goto_de
    const/4 p0, 0x1

    goto :goto_ec

    :cond_e0
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :goto_ec
    return p0

    :pswitch_ed  #0x1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :pswitch_fa  #0x0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-eqz p0, :cond_108

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-nez p0, :cond_108

    const/4 p0, -0x1

    goto :goto_122

    :cond_108
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-nez p0, :cond_116

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    if-eqz p0, :cond_116

    const/4 p0, 0x1

    goto :goto_122

    :cond_116
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :goto_122
    return p0

    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_fa  #00000000
        :pswitch_ed  #00000001
        :pswitch_48  #00000002
    .end packed-switch
.end method
