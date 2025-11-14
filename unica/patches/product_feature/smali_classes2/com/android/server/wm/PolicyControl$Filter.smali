.class public final Lcom/android/server/wm/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAllowList:Landroid/util/ArraySet;

.field public final mBlockList:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "=("

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p0, :cond_22

    if-lez v0, :cond_16

    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_16
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_22
    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_3b

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_35

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_35
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_3b
    new-instance p0, Lcom/android/server/wm/PolicyControl$Filter;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    const-string/jumbo v1, "allowList"

    invoke-static {v1, v0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object p0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    const-string/jumbo v0, "blockList"

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public final matches(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_f

    const/16 v3, 0x63

    if-gt v1, v3, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    const-string/jumbo v3, "apps"

    if-eqz v1, :cond_1e

    iget-object v4, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return v0

    :cond_1e
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, p0, Lcom/android/server/wm/PolicyControl$Filter;->mBlockList:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_53

    :cond_33
    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    return v2

    :cond_3e
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object p0, p0, Lcom/android/server/wm/PolicyControl$Filter;->mAllowList:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_52

    :cond_51
    return v0

    :cond_52
    :goto_52
    return v2

    :cond_53
    :goto_53
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
