.class public abstract Lcom/android/server/wm/LocaleOverlayHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [Ljava/util/Locale;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/os/LocaleList;

    invoke-direct {p0, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_3
    :goto_2
    return-object p0
.end method
