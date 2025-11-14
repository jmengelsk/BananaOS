.class public final Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mServices:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public final allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroid/util/Pair;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    check-cast p2, Landroid/util/Pair;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p3, Landroid/util/Pair;

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " filter "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p3, Landroid/util/Pair;

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, " filter "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, " permission "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-le p4, p0, :cond_0

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " filters)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :pswitch_0
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-le p4, p0, :cond_1

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " filters)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/util/Pair;

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Landroid/util/Pair;

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p2, Landroid/util/Pair;

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroid/util/Pair;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroid/util/Pair;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v9, p4

    move-wide/from16 v5, p5

    iget v3, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    move-object/from16 v3, p2

    check-cast v3, Landroid/util/Pair;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v10, v0, v5, v6, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v10, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    const-wide/32 v3, 0x1000000

    and-long/2addr v3, v5

    const-wide/16 v13, 0x0

    cmp-long v1, v3, v13

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const-wide/32 v15, 0x800000

    and-long/2addr v15, v5

    cmp-long v8, v15, v13

    if-eqz v8, :cond_3

    move v3, v4

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v12}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    if-nez v3, :cond_5

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move-object v8, v10

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    move/from16 v9, p4

    move-object v4, v0

    move-object v8, v1

    move-object v7, v6

    move-wide/from16 v5, p5

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    const-wide/16 v3, 0x40

    and-long/2addr v3, v5

    cmp-long v0, v3, v13

    if-eqz v0, :cond_9

    iput-object v12, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :cond_9
    invoke-virtual {v12}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v1, Landroid/content/pm/ResolveInfo;->icon:I

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return-object v1

    :pswitch_0
    move-object/from16 v3, p2

    check-cast v3, Landroid/util/Pair;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_4

    :cond_b
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedService;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v10, v4, v5, v6, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_4

    :cond_c
    invoke-interface {v10, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_d

    goto/16 :goto_4

    :cond_d
    const-wide/32 v3, 0x1000000

    and-long v3, p5, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_e

    move v3, v8

    goto :goto_3

    :cond_e
    move v3, v4

    :goto_3
    const-wide/32 v12, 0x800000

    and-long v12, p5, v12

    cmp-long v9, v12, v5

    if-eqz v9, :cond_f

    move v4, v8

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v11}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    if-nez v4, :cond_11

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_4

    :cond_12
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-wide/16 v7, 0x40

    and-long v7, p5, v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_13

    iput-object v11, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :cond_13
    invoke-virtual {v11}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iput v2, v3, Landroid/content/pm/ResolveInfo;->match:I

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v1

    iput-boolean v1, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v3, Landroid/content/pm/ResolveInfo;->icon:I

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, v3, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_5

    :cond_14
    :goto_4
    const/4 v3, 0x0

    :goto_5
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final sortResults(Ljava/util/List;)V
    .locals 0

    iget p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
