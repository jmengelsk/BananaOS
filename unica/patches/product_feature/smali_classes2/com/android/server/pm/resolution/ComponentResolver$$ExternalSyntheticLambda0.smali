.class public final synthetic Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget p0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    if-eq p0, v0, :cond_d

    if-le p0, v0, :cond_32

    goto :goto_30

    :cond_d
    iget p0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v0, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-eq p0, v0, :cond_16

    if-le p0, v0, :cond_32

    goto :goto_30

    :cond_16
    iget-boolean p0, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v0, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq p0, v0, :cond_1f

    if-eqz p0, :cond_32

    goto :goto_30

    :cond_1f
    iget p0, p1, Landroid/content/pm/ResolveInfo;->match:I

    iget v0, p2, Landroid/content/pm/ResolveInfo;->match:I

    if-eq p0, v0, :cond_28

    if-le p0, v0, :cond_32

    goto :goto_30

    :cond_28
    iget-boolean p0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v0, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq p0, v0, :cond_34

    if-eqz p0, :cond_32

    :goto_30
    const/4 p0, -0x1

    return p0

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_43

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_43
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_52

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_52
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_61

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_61
    const/4 p0, 0x0

    return p0
.end method
