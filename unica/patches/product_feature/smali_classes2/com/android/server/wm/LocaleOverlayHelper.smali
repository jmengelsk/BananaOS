.class public abstract Lcom/android/server/wm/LocaleOverlayHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .registers 6

    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3e

    :cond_9
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [Ljava/util/Locale;

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_25
    :goto_25
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_39
    new-instance p0, Landroid/os/LocaleList;

    invoke-direct {p0, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_3e
    :goto_3e
    return-object p0
.end method
